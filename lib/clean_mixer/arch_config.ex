defmodule CleanMixer.ArchConfig do
  alias CleanMixer.ArchMap.Component

  @type component_map :: %{Component.name() => Path.t()}

  defstruct component_map: %{}

  @type t :: %__MODULE__{
          component_map: component_map
        }

  @spec new(component_map) :: t
  def new(component_map) do
    %__MODULE__{
      component_map: component_map
    }
  end
end
