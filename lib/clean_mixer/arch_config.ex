defmodule CleanMixer.ArchConfig do
  alias CleanMixer.ArchMap.Component

  @type component_config :: {Component.name(), Path.t()} | {Component.name(), Path.t(), tags :: keyword}

  @type component :: %{name: Component.name(), path: Path.t(), tags: keyword}
  @type component_map :: list(component)

  defstruct component_map: []

  @type t :: %__MODULE__{
          component_map: component_map
        }

  @spec new(list(component_config)) :: t
  def new(components) do
    %__MODULE__{
      component_map: Enum.map(components, &to_component/1)
    }
  end

  @spec validate(t) :: :ok | {:error, term}
  def validate(%__MODULE__{component_map: component_map}) do
    validate_components(component_map)
  end

  defp to_component({name, path, tags}) do
    %{name: name, path: path, tags: tags}
  end

  defp to_component({name, path}) do
    to_component({name, path, []})
  end

  defp validate_components([]), do: :ok

  defp validate_components([%{path: path} | other_components]) do
    if !File.exists?(path) do
      {:error, "path:#{path} does not exist"}
    else
      validate_components(other_components)
    end
  end
end
