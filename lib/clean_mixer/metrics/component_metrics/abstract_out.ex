defmodule CleanMixer.Metrics.ComponentMetrics.AbstractOut do
  alias CleanMixer.ArchMap
  alias CleanMixer.CodeMap.FileDependency

  @type t :: non_neg_integer

  def compute(arch_map, component) do
    arch_map
    |> ArchMap.dependencies_of(component)
    |> Enum.flat_map(& &1.files)
    |> Enum.filter(&FileDependency.abstract?/1)
    |> Enum.count()
  end
end
