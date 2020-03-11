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
  def new(source, target, ref_types \\ [:runtime]) do
    %__MODULE__{
      source: source,
      target: target,
      ref_types: ref_types |> List.wrap() |> Enum.uniq()
    }
  end
end
