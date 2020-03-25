defmodule CleanMixer.Metrics.ComponentMetrics.PublicFiles do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component

  @type t :: non_neg_integer

  @spec compute(ArchMap.t(), Component.t()) :: t
  def(compute(arch_map, component)) do
    arch_map
    |> ArchMap.public_files(component)
    |> Enum.count()
  end
end
