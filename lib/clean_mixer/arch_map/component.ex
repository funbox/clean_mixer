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

  @subcomponent_delimiter "/"

  @spec new(name, list(SourceFile.t()), list(FileDependency.t())) :: t
  def new(name, files \\ [], file_dependencies \\ []) do
    %__MODULE__{name: name, files: files, file_dependencies: file_dependencies}
  end

  # TODO test this

  @spec file_dependencies(t, t) :: list(FileDependency.t())
  def file_dependencies(component, other_component) do
    component.file_dependencies
    |> Enum.filter(&(&1.target in other_component.files))
  end

  # TODO test this

  @spec child?(t, t) :: boolean
  def child?(child_component, parent_component) do
    child_component.name
    |> to_string()
    |> String.starts_with?([parent_component.name, @subcomponent_delimiter] |> Enum.join())
  end

  # TODO test this

  @spec depth(t) :: pos_integer
  def depth(%__MODULE__{name: name}) do
    name
    |> to_string()
    |> trim(@subcomponent_delimiter)
    |> count_occurences(@subcomponent_delimiter)
  end

  defp count_occurences(string, symbol) do
    subparts_count =
      string
      |> String.split(symbol, trim: true)
      |> Enum.count()

    subparts_count - 1
  end

  defp trim(string, symbol) do
    string
    |> String.trim_leading(symbol)
    |> String.trim_trailing(symbol)
  end
end
