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

  @spec merge_references(t, list(ModuleReference.t())) :: t
  def merge_references(source_file, references) do
    new_references =
      Enum.reject(references, fn new_ref ->
        Enum.find(source_file.references, &(&1.module_name == new_ref.module_name))
      end)

    %{source_file | references: source_file.references ++ new_references}
  end

  @spec has_module?(t, CodeModule.name()) :: boolean
  def has_module?(%__MODULE__{modules: modules}, name) do
    name in modules
  end

  @spec prepend_path(t, Path.t()) :: t
  def prepend_path(file, new_parent_path) do
    %__MODULE__{file | path: Path.join(new_parent_path, file.path)}
  end

  @spec erlang?(t) :: boolean
  def erlang?(%__MODULE__{path: path}) do
    String.ends_with?(path, ".erl")
  end
end
