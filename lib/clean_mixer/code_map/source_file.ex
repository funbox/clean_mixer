defmodule CleanMixer.CodeMap.SourceFile do
  alias CleanMixer.CodeMap.CodeModule
  alias CleanMixer.CodeMap.ModuleReference

  defstruct path: nil, modules: [], references: []

  @type t :: %__MODULE__{
          path: Path.t(),
          modules: list(CodeModule.name()),
          references: list(ModuleReference.t())
        }

  @spec new(Path.t(), list(CodeModule.name()), list(ModuleReference.t())) :: t
  def new(path, modules \\ [], refs \\ []) do
    %__MODULE__{path: path, modules: modules, references: refs}
  end

  @spec has_module?(t, CodeModule.name()) :: boolean
  def has_module?(%__MODULE__{modules: modules}, name) do
    name in modules
  end

  @spec prepend_path(t, Path.t()) :: t
  def prepend_path(file, new_parent_path) do
    %__MODULE__{file | path: Path.join(new_parent_path, file.path)}
  end
end
