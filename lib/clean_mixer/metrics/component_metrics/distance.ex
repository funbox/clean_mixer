defmodule CleanMixer.Metrics.ComponentMetrics.Distance do
  alias CleanMixer.Metrics.ComponentMetrics.Instability
  alias CleanMixer.Metrics.ComponentMetrics.Abstractness

  @type t :: float

  @spec compute(Instability.t(), Abstractness.t()) :: t
  def compute(instability, abstractness) do
    abs(abstractness + instability - 1)
  end
end
