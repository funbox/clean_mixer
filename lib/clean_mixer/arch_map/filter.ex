defmodule CleanMixer.ArchMap.Filter do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.ArchMap.Filter.Pattern

  @type name_pattern :: String.t()

  @spec with_source_components(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_source_components(arch_map, names) do
    map_deps(arch_map, names, fn dep, patterns ->
      match_component(dep, dep.source, patterns)
    end)
  end

  @spec with_target_components(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_target_components(arch_map, names) do
    map_deps(arch_map, names, fn dep, patterns ->
      match_component(dep, dep.target, patterns)
    end)
  end

  @spec with_file_sources(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_file_sources(arch_map, names) do
    map_deps(arch_map, names, fn comp, patterns ->
      match_file(comp, &Pattern.any?(&1.source.path, patterns))
    end)
  end

  @spec with_file_targets(ArchMap.t(), list(name_pattern)) :: ArchMap.t()
  def with_file_targets(arch_map, names) do
    map_deps(arch_map, names, fn comp, patterns ->
      match_file(comp, &Pattern.any?(&1.target.path, patterns))
    end)
  end

  defp map_deps(arch_map, name_patterns, filter) do
    patterns = Enum.map(name_patterns, &Pattern.new/1)

    new_deps =
      arch_map.dependencies
      |> Enum.map(&filter.(&1, patterns))
      |> Enum.reject(&is_nil/1)

    components =
      new_deps
      |> Enum.flat_map(&Dependency.components/1)
      |> Enum.uniq()

    ArchMap.new(components, new_deps)
  end

  def match_component(dep, %Component{name: name}, patterns) do
    if Pattern.any?(name, patterns) do
      dep
    end
  end

  defp match_file(%Dependency{} = dep, matcher) do
    case Enum.filter(dep.files, matcher) do
      [_ | _] = new_files -> %Dependency{dep | files: new_files}
      [] -> nil
    end
  end
end
