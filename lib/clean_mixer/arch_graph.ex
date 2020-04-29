defmodule CleanMixer.ArchGraph do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component

  @type t :: :digraph.graph()
  @type cycle :: list(Component.t())

  @spec build_from(ArchMap.t()) :: t
  def build_from(arch_map) do
    graph = :digraph.new()

    Enum.each(arch_map.components, &:digraph.add_vertex(graph, &1))
    Enum.each(arch_map.dependencies, &:digraph.add_edge(graph, &1.source, &1.target))

    graph
  end

  @spec cycles(t) :: list(cycle)
  def cycles(graph) do
    graph
    |> :digraph.vertices()
    |> Enum.map(&:digraph.get_cycle(graph, &1))
    |> Enum.reject(&is_boolean/1)
  end

  @spec uniq_cycles(cycle) :: list(cycle)
  def uniq_cycles(cycles) do
    Enum.uniq_by(cycles, fn components -> MapSet.new(components) end)
  end
end
