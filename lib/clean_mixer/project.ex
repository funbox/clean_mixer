defmodule CleanMixer.Project do
  alias CleanMixer.ArchConfig
  alias CleanMixer.CodeMap
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeCartographer
  alias CleanMixer.CompilerManifests.ManifestCartographer

  defstruct code_map: nil,
            arch_map: nil

  @type t :: %__MODULE__{
          code_map: CodeMap.t(),
          arch_map: ArchMap.t()
        }

  @default_cartographer CodeCartographer.new(ManifestCartographer)

  @spec new(ArchConfig.t()) :: t
  def new(config, {CodeCartographer, code_cartographer} \\ @default_cartographer) do
    code_map = code_cartographer.get_code_map()
    arch_map = make_arch_map(config.component_map, code_map)

    %__MODULE__{
      code_map: code_map,
      arch_map: arch_map
    }
  end

  defp make_arch_map(component_map, code_map) do
    component_map
    |> Enum.map(&new_component(&1, code_map))
    |> ArchMap.new()
  end

  defp new_component({name, path}, code_map) do
    component_files = code_map.files |> Enum.filter(&String.starts_with?(&1.path, path))
    component_deps = code_map.dependencies |> Enum.filter(&(&1.source in component_files))
    Component.new(name, component_files, component_deps)
  end
end
