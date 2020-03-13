defmodule CleanMixer.Metrics.ComponentMetrics.Stability do
  alias CleanMixer.Metrics.ComponentMetrics.Instability

  @type t :: float

  @spec compute(Instability.t()) :: t
  def compute(instability) do
    1 - instability
  end
end
