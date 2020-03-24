defmodule CleanMixer.UI.ArchMapRendering.PlantUML do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.Metrics.MetricsMap

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Stability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance

  @spec render(ArchMap.t(), MetricsMap.t()) :: String.t()
  def render(arch_map, metrics_map) do
    [
      "@startuml",
      "skinparam legend {\n FontSize 20\n }",
      "legend bottom left\n #{legend()} \n endlegend",
      Enum.map(arch_map.components, &format_component(&1, metrics_map)),
      Enum.map(arch_map.dependencies, &format_dependency(&1, metrics_map)),
      "@enduml"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp legend do
    "I = Instability = out / (in + out) \n" <>
      "S = Stability = 1 - I \n" <>
      "A = Abstractness = behaviours / total_modules \n" <>
      "D = Distance = |A+I-1|"
  end

  defp format_component(comp, metrics_map) do
    "rectangle #{sanitize(comp.name)} [ =#{comp.name} \n\n #{component_desc(comp, metrics_map)} ]"
  end

  defp component_desc(comp, metrics_map) do
    metrics = MetricsMap.component_metrics(metrics_map, comp)

    fan_in = metrics[FanIn]
    fan_out = metrics[FanOut]
    instability = format_metric(metrics[Instability])
    stability = format_metric(metrics[Stability])
    abstractness = format_metric(metrics[Abstractness])

    distance = format_metric(metrics[Distance])
    distance_sigmas = format_metric(MetricsMap.sigmas_count(metrics_map, Distance, comp))

    "In=#{fan_in} Out=#{fan_out} S=#{stability} (I=#{instability}) \n" <>
      "A=#{abstractness} D=#{distance} (#{distance_sigmas}σ)"
  end

  defp format_metric(value) do
    Float.round(value, 2)
  end

  defp format_dependency(%Dependency{} = dep, metrics_map) do
    "[#{sanitize(dep.source.name)}] -[#{link_style(dep, metrics_map)}]-> [#{sanitize(dep.target.name)}]"
  end

  defp link_style(%Dependency{} = dep, metrics_map) do
    source_stability = MetricsMap.component_metric(metrics_map, dep.source, Stability)
    target_stability = MetricsMap.component_metric(metrics_map, dep.target, Stability)

    if source_stability < target_stability do
      "#black"
    else
      "#red,bold"
    end
  end

  defp sanitize(name) do
    name
    |> String.replace("/", "_")
    |> String.replace("-", "_")
  end
end
