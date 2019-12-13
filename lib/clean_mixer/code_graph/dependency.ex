defmodule CleanMixer.CodeGraph.Dependency do
  alias CleanMixer.CodeGraph.SourceFile

  @type type :: :compile | :struct | :runtime

  defstruct [:source, :target, :type]

  @type t :: %__MODULE__{
          source: SourceFile.t(),
          target: SourceFile.t(),
          type: type
        }

  @spec new(SourceFile.t(), SourceFile.t(), type) :: t
  def new(source, target, type) do
    %__MODULE__{source: source, target: target, type: type}
  end

  defimpl String.Chars do
    def to_string(dep),
      do: "#{dep.source.path} -> #{dep.target.path} (#{dep.type})"
  end
end
