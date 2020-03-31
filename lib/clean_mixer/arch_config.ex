defmodule CleanMixer.ArchConfig do
  alias CleanMixer.ArchMap.Component

  @type component_map :: [{Component.name(), Path.t()}]

  defstruct component_map: []

  @type t :: %__MODULE__{
          component_map: component_map
        }

  @spec new(component_map) :: t
  def new(component_map) do
    %__MODULE__{
      component_map: component_map
    }
  end

  @spec validate(t) :: :ok | {:error, term}
  def validate(%__MODULE__{component_map: component_map}) do
    validate_components(component_map)
  end

  defp validate_components([]), do: :ok

  defp validate_components([{_name, path} | other_components]) do
    if !File.exists?(path) do
      {:error, "path:#{path} does not exist"}
    else
      validate_components(other_components)
    end
  end
end
