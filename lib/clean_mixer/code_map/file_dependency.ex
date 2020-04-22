defmodule CleanMixer.CodeMap.FileDependency do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference
  alias CleanMixer.CodeMap.CodeModule

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

  @spec modules(t) :: [CodeModule.name()]
  def modules(%__MODULE__{} = dep) do
    dep.source.references
    |> Enum.map(& &1.module_name)
    |> MapSet.new()
    |> MapSet.intersection(MapSet.new(dep.target.modules))
    |> MapSet.to_list()
  end

  @spec abstract?(t) :: boolean
  def abstract?(%__MODULE__{} = dep) do
    case modules(dep) do
      [] ->
        false

      mods ->
        Enum.all?(mods, &CodeModule.abstract?/1)
    end
  end
end
