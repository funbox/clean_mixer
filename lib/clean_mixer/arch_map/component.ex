defmodule CleanMixer.ArchMap.Component do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.CodeMap.CodeModule

  @type name :: String.t() | atom

  defstruct [
    :name,
    :files,
    :file_dependencies,
    meta: %{}
  ]

  @type t :: %__MODULE__{
          name: name,
          files: list(SourceFile.t()),
          file_dependencies: list(FileDependency.t()),
          meta: map
        }

  @subcomponent_delimiter "/"

  @spec new(name, list(SourceFile.t()), list(FileDependency.t())) :: t
  def new(name, files \\ [], file_dependencies \\ [], meta \\ %{}) do
    %__MODULE__{
      name: name,
      files: files,
      file_dependencies: file_dependencies,
      meta: meta
    }
  end

  @spec hex_pack?(t) :: boolean()
  def hex_pack?(component) do
    !!get_in(component.meta, [:tags, :hex_pack])
  end

  @spec file_dependencies(t, t) :: list(FileDependency.t())
  def file_dependencies(component, other_component) do
    component.file_dependencies
    |> Enum.filter(&(&1.target in other_component.files))
  end

  @spec child?(t, t) :: boolean
  def child?(child_component, parent_component) do
    child_component.name
    |> to_string()
    |> String.starts_with?([parent_component.name, @subcomponent_delimiter] |> Enum.join())
  end

  @spec has_file?(t, Path.t()) :: boolean
  def has_file?(component, path) do
    path in Enum.map(component.files, & &1.path)
  end

  @spec depth(t) :: pos_integer
  def depth(%__MODULE__{name: name}) do
    name
    |> to_string()
    |> trim(@subcomponent_delimiter)
    |> count_occurences(@subcomponent_delimiter)
  end

  @spec modules(t) :: list(CodeModule.t())
  def modules(%__MODULE__{files: files}) do
    Enum.flat_map(files, & &1.modules)
    |> Enum.map(fn module -> deliberate_reference(module) end)
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

  # this is a no-op. We only have it here so that the CodeModule dependency is deliberately
  # referenced for the benefit of test suite consistency across Elixir versions.
  #
  # The test suite includes tests asserting that ArchMap components have dependencies on
  # CodeMap components.
  #
  # This works fine in Elixir 1.10.4. But in Elixir 1.13.2, and probably earlier versions as well,
  # the compiler does not register CodeModule as a runtime dependency simply by virtue of its
  # being aliased and used in typespecs, as it seems to have done in Elixir 1.10.4.
  #
  # No doubt this change is due to the compiler optimization work the Elixir core team has been
  # doing to speed up compile times.
  #
  # Anyway, rather than change the test suite for fear of missing out on important code paths,
  # we introduce this explicit runtime reference to the CodeMap.CodeModule module that the
  # Elixir compiler will see regardless of the Elixir version.
  #
  # It's possible that in the future, the Elixir compiler would figure out that this is actually
  # a no-op, and optimize it out entirely. If the test suite starts failing again on future
  # Elixir versions, this is where I would look.
  defp deliberate_reference(%CodeModule{} = module) do
    module
    |> SourceFile.abstract?()
    |> handle_deliberate_reference(module)
  end

  defp deliberate_reference(value) do
    value
  end

  defp handle_deliberate_reference(_is_abstract = true, %CodeModule{} = module) do
    module
  end

  defp handle_deliberate_reference(_is_abstract = false, %CodeModule{} = module) do
    module
  end
end
