defmodule CleanMixer.ArchMap do
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  defstruct components: [],
            dependencies: []

  @type t :: %__MODULE__{
          components: list(Component.t()),
          dependencies: list(Dependency.t())
        }

  @spec new(list(Component.t())) :: t
  def new(components) do
    %__MODULE__{
      components: components,
      dependencies: build_dependencies(components)
    }
  end

  @spec dependencies_for(t(), Component.t()) :: list(Dependency.t())
  def dependencies_for(%__MODULE__{dependencies: deps}, %Component{} = component) do
    Enum.filter(deps, &(&1.source == component))
  end

  defp build_dependencies(components) do
    components
    |> Enum.flat_map(&build_dependencies_for(&1, components))
    |> Enum.uniq()
  end

  defp build_dependencies_for(component, all_components) do
    other_components =
      (all_components -- [component])
      |> Enum.sort_by(&Component.depth/1)
      |> Enum.reverse()

    build_dependencies_for(component, other_components, [])
  end

  # TODO refactor this mess

  defp build_dependencies_for(_component, [] = _other_components, deps_so_far) do
    deps_so_far
  end

  defp build_dependencies_for(component, [other_comp | rest_components], deps_so_far) do
    deps =
      case Component.file_dependencies(component, other_comp) |> filter_file_deps(deps_so_far) do
        [] -> []
        [_ | _] = deps -> [Dependency.new(component, other_comp, deps)]
      end

    build_dependencies_for(component, rest_components, deps ++ deps_so_far)
  end

  defp filter_file_deps(file_deps, component_deps) do
    existing_deps = Enum.flat_map(component_deps, & &1.files)
    file_deps -- existing_deps
  end
end
