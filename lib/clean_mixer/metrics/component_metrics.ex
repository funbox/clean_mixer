defmodule CleanMixer.Metrics.ComponentMetrics do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component

  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness

  @type t :: map
  @type metric_name :: atom
  @type metric_value :: term

  @spec compute(ArchMap.t(), Component.t()) :: t
  def compute(arch_map, component) do
    fan_in = FanIn.compute(arch_map, component)
    fan_out = FanOut.compute(arch_map, component)

    %{
      FanIn => fan_in,
      FanOut => fan_out,
      Instability => Instability.compute(fan_in, fan_out),
      Abstractness => Abstractness.compute(component)
    }
  end
end
