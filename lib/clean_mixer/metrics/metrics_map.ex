defmodule CleanMixer.Metrics.MetricsMap do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.Metrics.ComponentMetrics

  @type t :: %{optional(Component.t()) => ComponentMetrics.metric_value()}

  @spec compute(ArchMap.t()) :: t
  def compute(arch_map) do
    arch_map.components
    |> Enum.map(fn comp -> {comp, ComponentMetrics.compute(arch_map, comp)} end)
    |> Enum.into(%{})
  end

  @spec component_metrics(t, Component.t()) :: ComponentMetrics.t()
  def component_metrics(metrics_map, comp) do
    Map.fetch!(metrics_map, comp)
  end
end
