defmodule CleanMixer.CodeGraph.CodeModule do
  @type name :: module()

  defstruct [:name, :path]

  @type t :: %__MODULE__{
          name: name,
          path: Path.t()
        }
end
