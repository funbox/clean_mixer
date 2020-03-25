defmodule CleanMixer.UI.ArchMapRendering.PlantUML do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.Metrics.MetricsMap

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Stability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance
  alias CleanMixer.Metrics.ComponentMetrics.PublicFiles
  alias CleanMixer.Metrics.DependencyMetrics.Usage

  @spec render(ArchMap.t(), MetricsMap.t(Component.t()), MetricsMap.t(Dependency.t())) :: String.t()
  def render(arch_map, component_metrics, dependency_metrics) do
    [
      "@startuml",
      "skinparam legend {\n FontSize 20\n }",
      "legend bottom left\n #{legend()} \n endlegend",
      Enum.map(arch_map.components, &format_component(&1, component_metrics)),
      Enum.map(arch_map.dependencies, &format_dependency(&1, component_metrics, dependency_metrics)),
      "@enduml"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp legend do
    "I = Instability = out / (in + out) \n" <>
      "S = Stability = 1 - I \n" <>
      "Pf = Public files \n" <>
      "A = Abstractness = behaviours / total_modules \n" <>
      "D = Distance = |A+I-1| \n" <>
      "U = Usage = UsedFiles / Pf"
  end

  defp format_component(comp, metrics_map) do
    "rectangle #{sanitize(comp.name)} [ =#{comp.name} \n\n #{component_desc(comp, metrics_map)} ]"
  end

  defp component_desc(comp, metrics_map) do
    metrics = MetricsMap.metrics_of(metrics_map, comp)

    fan_in = metrics[FanIn]
    fan_out = metrics[FanOut]
    instability = format_metric(metrics[Instability])
    stability = format_metric(metrics[Stability])
    abstractness = format_metric(metrics[Abstractness])
    public_files = metrics[PublicFiles]

    distance = format_metric(metrics[Distance])
    distance_sigmas = format_metric(MetricsMap.sigmas_count(metrics_map, comp, Distance))

    "In=#{fan_in} Out=#{fan_out} S=#{stability} (I=#{instability}) \n" <>
      "Pf=#{public_files} A=#{abstractness} D=#{distance} (#{distance_sigmas}σ)"
  end

  defp format_dependency(%Dependency{} = dep, component_metrics, dependency_metrics) do
    usage = dependency_metrics |> MetricsMap.metric(dep, Usage) |> format_metric()

    "[#{sanitize(dep.source.name)}] -[#{link_style(dep, component_metrics)}]-> [#{sanitize(dep.target.name)}] : " <>
      "U=#{usage}"
  end

  defp link_style(%Dependency{} = dep, component_metrics) do
    source_stability = MetricsMap.metric(component_metrics, dep.source, Stability)
    target_stability = MetricsMap.metric(component_metrics, dep.target, Stability)

    if source_stability < target_stability do
      "#black"
    else
      "#red,bold"
    end
  end

  defp format_metric(value) do
    Float.round(value, 2)
  end

  defp sanitize(name) do
    name
    |> String.replace("/", "_")
    |> String.replace("-", "_")
  end
end
