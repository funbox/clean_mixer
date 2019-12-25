defmodule CleanMixer.ArchMap.Component do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency
  @type name :: String.t() | atom

  defstruct [:name, :files, :file_dependencies]

  @type t :: %__MODULE__{
          name: name,
          files: list(SourceFile.t()),
          file_dependencies: list(FileDependency.t())
        }

  @spec new(name, list(SourceFile.t()), list(FileDependency.t())) :: t
  def new(name, files \\ [], file_dependencies \\ []) do
    %__MODULE__{name: name, files: files, file_dependencies: file_dependencies}
  end

  @spec file_dependencies(t, t) :: list(FileDependency.t())
  def file_dependencies(component, other_component) do
    component.file_dependencies
    # TODO test this and refactor
    |> Enum.filter(&(&1.target in other_component.files && &1.target not in component.files))
  end
end
