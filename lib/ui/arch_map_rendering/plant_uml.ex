defmodule Mix.Tasks.CleanMixer.UI.ArchMapRendering.PlantUML do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.Metrics.MetricsMap

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance

  @spec render(ArchMap.t(), MetricsMap.t()) :: String.t()
  def render(arch_map, metrics_map) do
    [
      "@startuml",
      "skinparam legend {\n FontSize 20\n }",
      "legend bottom left\n #{legend()} \n endlegend",
      Enum.map(arch_map.components, &format_component(&1, metrics_map)),
      Enum.map(arch_map.dependencies, &format_dependency/1),
      "@enduml"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp legend do
    "I = Instability = out / (in + out) \n" <>
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
    instability = metrics[Instability] |> format_metric()
    abstractness = metrics[Abstractness] |> format_metric()
    distance = metrics[Distance] |> format_metric()

    "In=#{fan_in} Out=#{fan_out} I=#{instability} A=#{abstractness} D=#{distance}"
  end

  defp format_metric(value) do
    Float.round(value, 2)
  end

  defp format_dependency(%Dependency{} = dep) do
    "[#{sanitize(dep.source.name)}] --> [#{sanitize(dep.target.name)}]"
  end

  defp sanitize(name) do
    name
    |> String.replace("/", "_")
    |> String.replace("-", "_")
  end
end
