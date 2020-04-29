defmodule CleanMixer.UI.ArchMapRendering.PlantUMLRenderer do
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
  alias CleanMixer.Metrics.ComponentMetrics.AbstractIn
  alias CleanMixer.Metrics.ComponentMetrics.AbstractOut
  alias CleanMixer.Metrics.DependencyMetrics.Usage

  @spec render(ArchMap.t(), MetricsMap.t(Component.t()), MetricsMap.t(Dependency.t()), map) :: String.t()
  def render(arch_map, component_metrics, dependency_metrics, params) do
    [
      "@startuml",
      "skinparam legend {\n FontSize 20\n }",
      "legend bottom left\n #{legend(params)} \n endlegend",
      format_components(arch_map.components, group_tag(params), component_metrics),
      Enum.map(arch_map.dependencies, &format_dependency(&1, component_metrics, dependency_metrics, params)),
      "@enduml"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp group_tag(%{group: true}), do: :group
  defp group_tag(_params), do: :group_tag_undefined

  defp format_components(components, group_tag, component_metrics) do
    components
    |> Enum.group_by(&get_in(&1.meta, [:tags, group_tag]))
    |> Enum.map(&format_component_group(&1, component_metrics))
  end

  defp format_component_group({_group_name = nil, components}, component_metrics) do
    Enum.map(components, &format_component(&1, component_metrics))
  end

  defp format_component_group({group_name, components}, component_metrics) do
    [
      ~s(package "#{group_name}" {),
      Enum.map(components, &format_component(&1, component_metrics)),
      "}"
    ]
  end

  defp legend(params) do
    main_legend = [
      "I = Instability = out / (in + out)",
      "S = Stability = 1 - I",
      "A = Abstractness = behaviours / total_modules",
      "D = Distance = |A+I-1|",
      "Tf = Total files",
      "Pf = Public files",
      "Ain = Abstract in",
      "Aout = Abstract out"
    ]

    full_legend =
      if params[:verbose] do
        [main_legend, "U = Usage = UsedFiles / Pf"]
      else
        main_legend
      end

    full_legend |> List.flatten() |> Enum.join("\n")
  end

  defp format_component(comp, metrics_map) do
    "rectangle #{sanitize(comp.name)} [ =#{comp.name} \n\n #{component_desc(comp, metrics_map)} ]"
  end

  defp component_desc(comp, metrics_map) do
    metrics = MetricsMap.metrics_of(metrics_map, comp)

    fan_in = metrics[FanIn]
    fan_out = metrics[FanOut]
    stability = format_metric(metrics[Stability])
    instability = format_metric(metrics[Instability])

    abstractness = format_metric(metrics[Abstractness])
    distance = format_metric(metrics[Distance])
    distance_sigmas = format_metric(MetricsMap.sigmas_count(metrics_map, comp, Distance))

    total_files = Enum.count(comp.files)
    public_files = metrics[PublicFiles]
    abstract_in = metrics[AbstractIn]
    abstract_out = metrics[AbstractOut]

    "In=#{fan_in} Out=#{fan_out} S=#{stability} (I=#{instability}) \n" <>
      "A=#{abstractness} D=#{distance} (#{distance_sigmas}σ) \n" <>
      "Tf=#{total_files} Pf=#{public_files} Ain=#{abstract_in} Aout=#{abstract_out}"
  end

  defp format_dependency(%Dependency{} = dep, component_metrics, dependency_metrics, params) do
    link = "[#{sanitize(dep.source.name)}] -[#{link_style(dep, component_metrics)}]-> [#{sanitize(dep.target.name)}]"

    if params[:verbose] do
      usage = dependency_metrics |> MetricsMap.metric(dep, Usage) |> format_metric()

      link <> " : " <> "U=#{usage}"
    else
      link
    end
  end

  defp link_style(%Dependency{} = dep, component_metrics) do
    source_stability = MetricsMap.metric(component_metrics, dep.source, Stability)
    target_stability = MetricsMap.metric(component_metrics, dep.target, Stability)

    if source_stability > target_stability do
      "#red,bold"
    else
      "#black"
    end
  end

  defp format_metric(value) do
    Float.round(value, 2)
  end

  defp sanitize(name) do
    name
    |> String.replace(" ", "_")
    |> String.replace("/", "_")
    |> String.replace("-", "_")
  end
end
