defmodule CleanMixer.Metrics.ComponentMetrics do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness
  alias CleanMixer.Metrics.ComponentMetrics.Distance

  @type t :: map
  @type metric_name :: atom
  @type metric_value :: term

  @spec compute(ArchMap.t(), Component.t()) :: t
  def compute(arch_map, component) do
    fan_in = FanIn.compute(arch_map, component)
    fan_out = FanOut.compute(arch_map, component)

    instability = Instability.compute(fan_in, fan_out)
    abstractness = Abstractness.compute(component)

    %{
      FanIn => fan_in,
      FanOut => fan_out,
      Instability => instability,
      Abstractness => abstractness,
      Distance => Distance.compute(instability, abstractness)
    }
  end
end