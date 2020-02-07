defmodule CleanMixer.Metrics.ComponentMetrics.Instability do
  alias CleanMixer.Metrics.ComponentMetrics.FanIn
  alias CleanMixer.Metrics.ComponentMetrics.FanOut

  @type t :: float

  @spec compute(FanIn.t(), FanOut.t()) :: t
  def compute(fan_in, fan_out) do
    fan_out / (fan_in + fan_out)
  end
end
