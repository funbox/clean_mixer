defmodule CleanMixer.CodeGraph do
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph.FileDependency
  alias CleanMixer.CodeGraph.CodeModule
  alias __MODULE__

  defstruct files: []

  @type t :: %__MODULE__{
          files: list(SourceFile.t())
        }

  @spec new(list(SourceFile.t())) :: t
  def new(files) do
    %__MODULE__{files: files}
  end

  @spec merge(t, t) :: t
  def merge(graph, other_graph) do
    %__MODULE__{
      files: Enum.uniq(graph.files ++ other_graph.files)
    }
  end

  @spec dependencies(t) :: list(FileDependency.t())
  def dependencies(%CodeGraph{files: files}) do
    files
    |> Enum.flat_map(&file_dependencies_for(&1, files))
    |> Enum.uniq()
  end

  defp file_dependencies_for(%SourceFile{references: refs} = source_file, files) do
    refs
    |> Enum.group_by(& &1.module_name)
    |> Enum.map(fn {module_name, refs} ->
      target = source_file_for(module_name, files)
      ref_types = Enum.map(refs, & &1.ref_type)

      new_dependency(source_file, target, ref_types)
    end)
  end

  defp source_file_for(module_name, files) do
    Enum.find(files, &SourceFile.has_module?(&1, module_name))
  end

  defp new_dependency(_source_file, nil, _ref_types), do: nil

  defp new_dependency(source_file, target_file, ref_types),
    do: FileDependency.new(source_file, target_file, ref_types)
end
