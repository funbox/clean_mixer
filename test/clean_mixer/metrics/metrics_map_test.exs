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

  describe "compute" do
    test "computes metrics_map for arch_map" do
      comp1 =
        Component.new("comp1", [
          SourceFile.new("any-path", [__MODULE__]),
          SourceFile.new("any-path", [CleanMixer.CodeCartographer])
        ])

      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2, [FileDependency.new("a", "b")])
        ]
      }

      metrics = MetricsMap.compute(arch_map)

      assert MetricsMap.component_metrics(metrics, comp1) == %{
               FanIn => 0,
               FanOut => 1,
               Instability => 1,
               Abstractness => 0.5,
               Distance => 0.5
             }
    end
  end
end
