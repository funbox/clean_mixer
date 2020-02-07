defmodule CleanMixer.Metrics.ComponentMetrics.FanIn do
  alias CleanMixer.ArchMap

  @type t :: non_neg_integer

  def compute(arch_map, component) do
    arch_map
    |> ArchMap.incoming_dependencies_of(component)
    |> Enum.flat_map(& &1.files)
    |> Enum.count()
  end
end
