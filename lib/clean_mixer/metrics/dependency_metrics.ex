defmodule CleanMixer.Metrics.DependencyMetrics do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.Metrics.DependencyMetrics.Usage

  @spec compute(ArchMap.t(), MetricsMap.t(Component.t()), Dependency.t()) :: map
  def compute(_arch_map, component_metrics, dep) do
    %{
      Usage => Usage.compute(component_metrics, dep)
    }
  end
end
