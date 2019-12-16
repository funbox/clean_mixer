defmodule CleanMixer.CodeGraph.SourceFile do
  alias CleanMixer.CodeGraph.CodeModule
  alias CleanMixer.CodeGraph.ModuleReference

  defstruct path: nil, modules: [], references: []

  @type t :: %__MODULE__{
          path: Path.t(),
          modules: CodeModule.t(),
          references: list(ModuleReference.t())
        }

  @spec new(Path.t(), list(CodeModule.t()), list(ModuleReference.t())) :: t
  def new(path, modules, refs) do
    %__MODULE__{path: path, modules: modules, references: refs}
  end

  @spec prepend_path(t, Path.t()) :: t
  def prepend_path(file, new_parent_path) do
    new_refs =
      Enum.map(file.references, fn ref ->
        %ModuleReference{ref | module: CodeModule.prepend_path(ref.module, new_parent_path)}
      end)

    %__MODULE__{file | path: Path.join(new_parent_path, file.path), references: new_refs}
  end
end
