defmodule CleanMixer.Project do
  alias CleanMixer.ArchConfig
  alias CleanMixer.CodeMap
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeCartographer
  alias CleanMixer.CompilerManifests.ManifestCartographer
  alias CleanMixer.CompilerManifests.App

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

    # TODO test this logic
    arch_map =
      make_arch_map(config.component_map ++ mix_deps(), code_map)
      |> filter_mix_deps()

    %__MODULE__{
      code_map: code_map,
      arch_map: arch_map
    }
  end

  defp mix_deps() do
    for app <- App.current_deps() do
      %{name: to_string(app.name), path: app.path, tags: [dep: true]}
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

  # TODO test this logic

  defp filter_mix_deps(arch_map) do
    dangling_mix_deps =
      Enum.filter(arch_map.components, fn comp ->
        Component.mix_dep?(comp) && !used_by_non_dep?(comp, arch_map)
      end)

    ArchMap.except(arch_map, dangling_mix_deps)
  end

  defp used_by_non_dep?(comp, arch_map) do
    ArchMap.usages_of(arch_map, comp) |> Enum.any?(&(!Component.mix_dep?(&1.source)))
  end
end
