defmodule CleanMixer.CodeMap do
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.Graph

  defstruct files: [],
            dependencies: []

  @type t :: %__MODULE__{
          files: list(SourceFile.t()),
          dependencies: list(FileDependency.t())
        }

  @spec new(list(SourceFile.t())) :: t
  def new(files) do
    %__MODULE__{
      files: files,
      dependencies: find_dependencies(files)
    }
  end

  @spec graph(t()) :: Graph.t()
  def graph(code_map) do
    graph = :digraph.new()

    Enum.each(code_map.files, &:digraph.add_vertex(graph, &1))
    Enum.each(code_map.dependencies, &:digraph.add_edge(graph, &1.source, &1.target))

    graph
  end

  defp find_dependencies(files) do
    files
    |> Enum.flat_map(&file_dependencies_of(&1, files))
    |> Enum.uniq()
  end

  defp file_dependencies_of(%SourceFile{references: refs} = source_file, files) do
    refs
    |> Enum.group_by(& &1.module_name)
    |> Enum.map(fn {module_name, refs} ->
      target = source_file_for(module_name, files)
      ref_types = Enum.map(refs, & &1.ref_type)

      new_dependency(source_file, target, ref_types)
    end)
    |> Enum.reject(&is_nil/1)
  end

  defp source_file_for(module_name, files) do
    Enum.find(files, &SourceFile.has_module?(&1, module_name))
  end

  defp new_dependency(_source_file, nil, _ref_types), do: nil

  defp new_dependency(source_file, target_file, ref_types),
    do: FileDependency.new(source_file, target_file, ref_types)
end
