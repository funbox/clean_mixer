defmodule CleanMixer.Metrics.MetricsMapTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency

  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance
  alias CleanMixer.Metrics.ComponentMetrics.Stability
  alias CleanMixer.Metrics.ComponentMetrics.PublicFiles
  alias CleanMixer.Metrics.DependencyMetrics.Usage

  describe "compute_component_metrics" do
    test "computes metrics_map for components in arch_map" do
      comp1 =
        Component.new("comp1", [
          SourceFile.new("any-path", [__MODULE__]),
          SourceFile.new("any-path", [CleanMixer.CodeCartographer])
        ])

      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2, [
            FileDependency.new(SourceFile.new("a"), SourceFile.new("b"))
          ])
        ]
      }

      metrics = MetricsMap.compute_component_metrics(arch_map)

      assert MetricsMap.metrics_of(metrics, comp1) == %{
               FanIn => 0,
               FanOut => 1,
               Instability => 1,
               Stability => 0,
               Abstractness => 0.5,
               Distance => 0.5,
               PublicFiles => 0
             }
    end
  end

  describe "compute_dep_metrics" do
    test "computes metrics_map for dependencies in arch_map" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      dep1 =
        Dependency.new(comp1, comp2, [
          FileDependency.new(SourceFile.new("a"), SourceFile.new("b"))
        ])

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [dep1]
      }

      comp_metrics = MetricsMap.compute_component_metrics(arch_map)
      metrics = MetricsMap.compute_dep_metrics(arch_map, comp_metrics)

      assert MetricsMap.metrics_of(metrics, dep1) == %{
               Usage => 1
             }
    end
  end

  describe "mean" do
    test "returns mean value of metric for all components" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2, [FileDependency.new("a", "b")])
        ]
      }

      assert arch_map |> MetricsMap.compute_component_metrics() |> MetricsMap.mean(FanIn) == 0.5
    end
  end

  describe "deviation" do
    test "returns metric deviation and its sigmas count" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2, [FileDependency.new("a", "b")])
        ]
      }

      metrics = MetricsMap.compute_component_metrics(arch_map)

      assert MetricsMap.deviation(metrics, FanIn) > 0
      assert MetricsMap.sigmas_count(metrics, comp2, FanIn) == 2
    end
  end
end
