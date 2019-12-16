defmodule CleanMixer.CodeGraph do
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph.FileDependency

  defstruct files: [],
            dependencies: []

  @type t :: %__MODULE__{
          files: list(SourceFile.t()),
          dependencies: list(FileDependency.t())
        }

  @spec new(list(SourceFile.t())) :: t
  def new(files) do
    %__MODULE__{files: files, dependencies: deps_for(files)}
  end

  @spec merge(t, t) :: t
  def merge(graph, other_graph) do
    %__MODULE__{
      files: Enum.uniq(graph.files ++ other_graph.files),
      dependencies: Enum.uniq(graph.dependencies ++ other_graph.dependencies)
    }
  end

  defp deps_for(files) do
    # TODO refactor a bit

    for %SourceFile{references: refs} = source_file <- files do
      refs
      |> Enum.group_by(& &1.module.path)
      |> Enum.map(fn {path, refs} ->
        target = source_file_for(path, files)
        ref_types = Enum.map(refs, & &1.ref_type)

        new_dependency(source_file, target, ref_types)
      end)
    end
    |> List.flatten()
    |> Enum.uniq()
  end

  defp source_file_for(path, files) do
    Enum.find(files, &(&1.path == path))
  end

  defp new_dependency(_source_file, nil, _ref_types), do: nil

  defp new_dependency(source_file, target_file, ref_types),
    do: FileDependency.new(source_file, target_file, ref_types)
end
