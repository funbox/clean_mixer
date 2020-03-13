defmodule CleanMixer.ArchMap.Filter do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.ArchMap.Filter.Pattern

  @type name_pattern :: String.t()

  @spec with_sources(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_sources(arch_map, component_names) do
    filter_by_deps(arch_map, component_names, &comp_matches?(&1.source, &2))
  end

  @spec with_targets(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_targets(arch_map, component_names) do
    filter_by_deps(arch_map, component_names, &comp_matches?(&1.target, &2))
  end

  defp filter_by_deps(arch_map, names, filter) do
    patterns = Enum.map(names, &Pattern.new/1)
    new_deps = arch_map.dependencies |> Enum.filter(&filter.(&1, patterns))

    components =
      new_deps
      |> Enum.flat_map(&Dependency.components/1)
      |> Enum.uniq()

    ArchMap.new(components, new_deps)
  end

  def comp_matches?(%Component{name: name}, patterns) do
    Enum.any?(patterns, &Pattern.match?(&1, name))
  end
end
