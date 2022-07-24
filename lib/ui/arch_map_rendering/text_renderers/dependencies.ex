defmodule CleanMixer.UI.ArchMapRendering.TextRenderes.Dependencies do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.CodeMap.FileDependency

  alias CleanMixer.UI.ArchMapRendering.TextRenderer
  @behaviour TextRenderer

  @impl TextRenderer
  def render(%ArchMap{} = arch_map, _options \\ []) do
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
      "===> #{render_comp(dep.source)} -> #{render_comp(dep.target)}",
      "\n",
      dep.files |> Enum.group_by(& &1.source) |> Enum.map_join("\n", &format_file_dependencies/1)
    ]
  end

  defp render_comp(comp) do
    comp.name
  end

  defp format_file_dependencies({source_file, deps}) do
    [
      [" * #{source_file.path}"],
      "\n",
      Enum.map_join(deps, "\n", &format_file_dependency/1)
    ]
  end

  defp format_file_dependency(%FileDependency{} = dep) do
    [" |", "---> #{dep.target.path} ", format_ref_types(dep.ref_types)]
  end

  defp format_ref_types([:unknown]), do: ""

  defp format_ref_types(ref_types) do
    "(" <> Enum.join(ref_types, ",") <> ")"
  end
end
