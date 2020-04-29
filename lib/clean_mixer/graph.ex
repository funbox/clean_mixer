defmodule CleanMixer.Graph do
  @type t :: :digraph.graph()

  @type cycle :: cycle(term)
  @type cycle(item) :: list(item)

  @spec cycles(t) :: list(cycle)
  def cycles(graph) do
    graph
    |> :digraph.vertices()
    |> Enum.map(&:digraph.get_cycle(graph, &1))
    |> Enum.reject(&is_boolean/1)
  end

  @spec uniq_cycles(cycle) :: list(cycle)
  def uniq_cycles(cycles) do
    Enum.uniq_by(cycles, fn items -> MapSet.new(items) end)
  end
end
