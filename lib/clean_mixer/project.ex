defmodule CleanMixer.Project do
  alias CleanMixer.ArchConfig
  alias CleanMixer.CodeMap
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeCartographer
  alias CleanMixer.CompilerManifests.ManifestCartographer
  alias CleanMixer.CompilerManifests.App

  require Logger

  defstruct code_map: nil,
            arch_map: nil

  @type t :: %__MODULE__{
          code_map: CodeMap.t(),
          arch_map: ArchMap.t()
        }

  @default_cartographer CodeCartographer.new(ManifestCartographer)

  @spec new(ArchConfig.t(), CodeCartographer.options()) :: t
  def new(config, options \\ [], {CodeCartographer, code_cartographer} \\ @default_cartographer) do
    code_map = code_cartographer.get_code_map(options)
    # Logger.debug("#{__MODULE__}.new/2 code_map: #{inspect(code_map)}")

    arch_map =
      make_arch_map(config.component_map ++ hex_packs(), code_map)
      |> filter_hex_packs()

    %__MODULE__{
      code_map: code_map,
      arch_map: arch_map
    }
  end

  defp hex_packs() do
    for app <- App.current_deps() do
      %{name: "hex/#{app.name}", path: app.path, tags: [hex_pack: true]}
    end
  end

  defp make_arch_map(component_map, code_map) do
    component_map
    |> Enum.map(&new_component(&1, code_map))
    |> ArchMap.build()
  end

  defp new_component(%{name: name, path: path, tags: tags}, code_map) do
    component_files = code_map.files |> Enum.filter(&String.starts_with?(&1.path, path))
    component_deps = code_map.dependencies |> Enum.filter(&(&1.source in component_files))
    meta = %{tags: tags, config_path: path}

    Component.new(name, component_files, component_deps, meta)
  end

  defp filter_hex_packs(arch_map) do
    arch_map
    |> filter_hex_components()
    |> filter_hex_deps()
  end

  defp filter_hex_components(arch_map) do
    dangling_hex_packs =
      Enum.filter(arch_map.components, fn comp ->
        Component.hex_pack?(comp) && !used_by_non_hex?(comp, arch_map)
      end)

    ArchMap.except(arch_map, dangling_hex_packs)
  end

  defp used_by_non_hex?(comp, arch_map) do
    ArchMap.usages_of(arch_map, comp) |> Enum.any?(&(!Component.hex_pack?(&1.source)))
  end

  defp filter_hex_deps(arch_map) do
    new_deps =
      Enum.reject(arch_map.dependencies, fn dep ->
        Component.hex_pack?(dep.source) && Component.hex_pack?(dep.target)
      end)

    %ArchMap{arch_map | dependencies: new_deps}
  end
end
