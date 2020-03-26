defmodule CleanMixer.Metrics.MetricsMap do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  alias CleanMixer.Metrics.ComponentMetrics
  alias CleanMixer.Metrics.DependencyMetrics

  alias :math, as: Math

  @type entity :: Component.t() | Dependency.t()

  @type metric_name :: atom
  @type metric_value :: term

  @type t(key) :: %{optional(key) => %{}}
  @type t() :: t(entity)

  @spec compute_component_metrics(ArchMap.t()) :: t(Component.t())
  def compute_component_metrics(arch_map) do
    arch_map.components
    |> Enum.map(fn comp -> {comp, ComponentMetrics.compute(arch_map, comp)} end)
    |> Enum.into(%{})
  end

  @spec compute_dep_metrics(ArchMap.t(), t(Component.t())) :: t(Dependency.t())
  def compute_dep_metrics(arch_map, component_metrics) do
    arch_map.dependencies
    |> Enum.map(fn dep -> {dep, DependencyMetrics.compute(arch_map, component_metrics, dep)} end)
    |> Enum.into(%{})
  end

  @spec metrics_of(t, entity) :: map
  def metrics_of(metrics_map, entity) do
    Map.fetch!(metrics_map, entity)
  end

  @spec metric(t, entity, metric_name()) :: metric_value()
  def metric(metrics_map, entity, metric) do
    metrics_map |> metrics_of(entity) |> Map.fetch!(metric)
  end

  @spec mean(t, metric_name()) :: metric_value()
  def mean(metrics_map, metric) do
    total = all_values(metrics_map, metric) |> Enum.sum()
    total / map_size(metrics_map)
  end

  @spec deviation(t, metric_name()) :: metric_value()
  def deviation(metrics_map, metric) do
    mean_val = mean(metrics_map, metric)
    diffs_sum = metrics_map |> all_values(metric) |> Enum.map(&Math.pow(&1 - mean_val, 2)) |> Enum.sum()
    Math.sqrt(diffs_sum / map_size(metrics_map))
  end

  @spec sigmas_count(t, entity, metric_name()) :: float
  def sigmas_count(metrics_map, entity, metric) do
    metric(metrics_map, entity, metric) / deviation(metrics_map, metric)
  end

  defp all_values(metrics_map, metric) do
    metrics_map |> Map.values() |> Enum.map(&Map.fetch!(&1, metric))
  end
end
