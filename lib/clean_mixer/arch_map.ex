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
      dependencies: find_dependencies(components)
    }
  end

  defp find_dependencies(components) do
    components
    |> Enum.flat_map(&dependencies_for(&1, components))
    |> Enum.uniq()
  end

  defp dependencies_for(component, all_components) do
    other_components = all_components -- [component]

    Enum.flat_map(other_components, fn other_comp ->
      case Component.file_dependencies(component, other_comp) do
        [] -> []
        [_ | _] = deps -> [Dependency.new(component, other_comp, deps)]
      end
    end)
  end
end
