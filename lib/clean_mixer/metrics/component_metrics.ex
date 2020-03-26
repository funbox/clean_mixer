defmodule CleanMixer.Metrics.ComponentMetrics do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance
  alias CleanMixer.Metrics.ComponentMetrics.Stability
  alias CleanMixer.Metrics.ComponentMetrics.PublicFiles
  alias CleanMixer.Metrics.ComponentMetrics.AbstractIn
  alias CleanMixer.Metrics.ComponentMetrics.AbstractOut

  @spec compute(ArchMap.t(), Component.t()) :: map
  def compute(arch_map, component) do
    fan_in = FanIn.compute(arch_map, component)
    fan_out = FanOut.compute(arch_map, component)

    instability = Instability.compute(fan_in, fan_out)
    abstractness = Abstractness.compute(component)

    %{
      FanIn => fan_in,
      FanOut => fan_out,
      Instability => instability,
      Stability => Stability.compute(instability),
      Abstractness => abstractness,
      Distance => Distance.compute(instability, abstractness),
      PublicFiles => PublicFiles.compute(arch_map, component),
      AbstractIn => AbstractIn.compute(arch_map, component),
      AbstractOut => AbstractOut.compute(arch_map, component)
    }
  end
end
