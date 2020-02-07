defmodule CleanMixer.Metrics.ComponentMetrics.FanOut do
  alias CleanMixer.ArchMap

  @type t :: non_neg_integer

  def compute(arch_map, component) do
    arch_map
    |> ArchMap.dependencies_of(component)
    |> Enum.flat_map(& &1.files)
    |> Enum.count()
  end
end
