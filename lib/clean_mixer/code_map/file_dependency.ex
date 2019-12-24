defmodule CleanMixer.CodeMap.FileDependency do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference
  defstruct [:source, :target, :ref_types]

  @type t :: %__MODULE__{
          source: SourceFile.t(),
          target: SourceFile.t(),
          ref_types: list(ModuleReference.ref_type())
        }

  @spec new(SourceFile.t(), SourceFile.t(), ModuleReference.ref_type() | list(ModuleReference.ref_type())) :: t
  def new(source, target, ref_types) do
    %__MODULE__{
      source: source,
      target: target,
      ref_types: ref_types |> List.wrap() |> Enum.uniq()
    }
  end

  defimpl String.Chars do
    def to_string(dep),
      do: "#{dep.source.path} -> #{dep.target.path} (#{dep.ref_types |> Enum.join(",")})"
  end
end
