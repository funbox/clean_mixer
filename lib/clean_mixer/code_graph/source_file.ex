defmodule CleanMixer.CodeGraph.SourceFile do
  defstruct [:path]

  @type t :: %__MODULE__{
          path: Path.t()
        }

  @spec new(Path.t()) :: t
  def new(path) do
    %__MODULE__{path: path}
  end
end
