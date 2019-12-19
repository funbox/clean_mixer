defmodule CleanMixer.ArchMap.Component do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency
  @type name :: String.t()

  defstruct [:name, :files, :file_dependencies]

  @type t :: %__MODULE__{
          name: name,
          files: list(SourceFile.t()),
          file_dependencies: list(FileDependency.t())
        }

  @spec new(name, list(SourceFile.t()), list(FileDependency.t())) :: t
  def new(name, files, file_dependencies) do
    %__MODULE__{name: name, files: files, file_dependencies: file_dependencies}
  end

  @spec has_dependency?(t, t) :: boolean
  def has_dependency?(component, other_component) do
    component.file_dependencies |> Enum.any?(&(&1.target in other_component.files))
  end
end
