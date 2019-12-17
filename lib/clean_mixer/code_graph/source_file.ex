defmodule CleanMixer.CodeGraph.SourceFile do
  alias CleanMixer.CodeGraph.CodeModule
  alias CleanMixer.CodeGraph.ModuleReference
  alias __MODULE__

  defstruct path: nil, modules: [], references: []

  @type t :: %SourceFile{
          path: Path.t(),
          modules: list(CodeModule.name()),
          references: list(ModuleReference.t())
        }

  @spec new(Path.t(), list(CodeModule.name()), list(ModuleReference.t())) :: t
  def new(path, modules, refs) do
    %SourceFile{path: path, modules: modules, references: refs}
  end

  @spec has_module?(t, CodeModule.name()) :: boolean
  def has_module?(%SourceFile{modules: modules}, name) do
    name in modules
  end

  @spec prepend_path(t, Path.t()) :: t
  def prepend_path(file, new_parent_path) do
    %SourceFile{file | path: Path.join(new_parent_path, file.path)}
  end
end
