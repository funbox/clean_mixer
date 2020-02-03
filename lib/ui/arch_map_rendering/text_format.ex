defmodule Mix.Tasks.CleanMixer.UI.ArchMapRendering.TextFormat do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.CodeMap.FileDependency

  @spec render(ArchMap.t()) :: String.t()
  def render(%ArchMap{} = arch_map) do
    arch_map.components
    |> Enum.map(&{&1, ArchMap.dependencies_of(arch_map, &1)})
    |> with_dependencies()
    |> Enum.map_join("\n\n", &format_component/1)
  end

  defp with_dependencies(components), do: Enum.reject(components, &match?({_, [] = _deps}, &1))

  defp format_component({%Component{}, deps}) do
    Enum.map_join(deps, "\n", &format_component_dependency/1)
  end

  defp format_component_dependency(%Dependency{} = dep) do
    [
      "===> #{dep.source.name} -> #{dep.target.name}",
      "\n",
      dep.files |> Enum.group_by(& &1.source) |> Enum.map_join("\n", &format_file_dependencies/1)
    ]
  end

  defp format_file_dependencies({source_file, deps}) do
    [
      [" * #{source_file.path}"],
      "\n",
      Enum.map_join(deps, "\n", &format_file_dependency/1)
    ]
  end

  defp format_file_dependency(%FileDependency{} = dep) do
    [" |", "---> #{dep.target.path} (#{dep.ref_types |> Enum.join(",")})"]
  end
end
