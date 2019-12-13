defmodule CleanMixer.CodeGraph.Dependency do
  alias CleanMixer.CodeGraph.SourceFile

  @type dep_type :: :compile | :struct | :runtime

  defstruct [:source, :target, :types]

  @type t :: %__MODULE__{
          source: SourceFile.t(),
          target: SourceFile.t(),
          types: list(dep_type)
        }

  @spec new(SourceFile.t(), SourceFile.t(), dep_type | list(dep_type)) :: t
  def new(source, target, types) do
    %__MODULE__{
      source: source,
      target: target,
      types: types |> List.wrap() |> Enum.uniq()
    }
  end

  defimpl String.Chars do
    def to_string(dep),
      do: "#{dep.source.path} -> #{dep.target.path} (#{dep.types |> Enum.join(",")})"
  end
end
