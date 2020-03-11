defmodule CleanMixer.Metrics.MetricsMap do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.Metrics.ComponentMetrics
  alias :math, as: Math

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

  # @TODO test this

  @spec mean(t, ComponentMetrics.metric_name()) :: ComponentMetrics.metric_value()
  def mean(metrics_map, metric) do
    total = all_values(metrics_map, metric) |> Enum.sum()
    total / map_size(metrics_map)
  end

  # @TODO test this

  @spec deviation(t, ComponentMetrics.metric_name()) :: ComponentMetrics.metric_value()
  def deviation(metrics_map, metric) do
    mean_val = mean(metrics_map, metric)
    diffs_sum = metrics_map |> all_values(metric) |> Enum.map(&Math.pow(&1 - mean_val, 2)) |> Enum.sum()
    Math.sqrt(diffs_sum / map_size(metrics_map))
  end

  defp all_values(metrics_map, metric) do
    metrics_map |> Map.values() |> Enum.map(&Map.fetch!(&1, metric))
  end
end
