defmodule CleanMixer.UI.ArchMapRendering.TextRenderes.Usages do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.FileDependency

  alias CleanMixer.UI.ArchMapRendering.TextRenderer
  @behaviour TextRenderer

  @impl TextRenderer
  def render(%ArchMap{} = arch_map, options) do
    arch_map.components
    |> Enum.map(&{&1, ArchMap.usages_of(arch_map, &1)})
    |> with_usages()
    |> Enum.map_join("\n\n", &format_component(&1, options))
  end

  defp with_usages(components), do: Enum.reject(components, &match?({_, [] = _usages}, &1))

  defp format_component({%Component{name: name}, usages}, options) do
    usage_names = Enum.map(usages, & &1.source.name)

    lines = [
      "===> #{name} <- [#{Enum.join(usage_names, ", ")}]",
      format_used_files(usages, options)
    ]

    lines |> List.flatten() |> Enum.join("\n")
  end

  defp format_used_files(usages, options) do
    usages
    |> Enum.flat_map(& &1.files)
    |> Enum.group_by(& &1.target)
    |> Enum.map(&format_file_usage(&1, options))
  end

  defp format_file_usage({source_file, file_usages}, options) do
    fomatted_file_usages =
      if options[:verbose],
        do: Enum.map(file_usages, &format_file_usages/1),
        else: []

    [
      [" * #{source_file.path}"],
      fomatted_file_usages
    ]
  end

  defp format_file_usages(%FileDependency{} = dep) do
    ["   | <--- #{dep.source.path}"]
  end
end
