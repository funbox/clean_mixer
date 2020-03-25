defmodule CleanMixer.Metrics.ComponentMetrics.PublicFiles do
  alias CleanMixer.ArchMap

  @type t :: non_neg_integer

  def compute(arch_map, component) do
    arch_map
    |> ArchMap.public_files(component)
    |> Enum.count()
  end
end
