defmodule CleanMixer.Metrics.DependencyMetrics.Usage do
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.Metrics.ComponentMetrics.PublicFiles
  alias CleanMixer.ArchMap.Component

  @type t :: float

  @spec compute(MetricsMap.t(Component.t()), Dependency.t()) :: t
  def compute(component_metrics, dep) do
    total_files = MetricsMap.metric(component_metrics, dep.target, PublicFiles)
    used_files = dep.files |> Enum.map(& &1.target) |> Enum.uniq() |> Enum.count()

    used_files / total_files
  end
end
