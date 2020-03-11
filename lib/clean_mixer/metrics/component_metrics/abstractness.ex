defmodule CleanMixer.Metrics.ComponentMetrics.Abstractness do
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.CodeModule

  @type t :: float

  @spec compute(Component.t()) :: t
  def compute(comp) do
    all_modules = Component.modules(comp)
    behaviours = comp |> Component.modules() |> Enum.filter(&CodeModule.behaviour?/1)

    case all_modules do
      [] -> 0
      [_ | _] -> Enum.count(behaviours) / Enum.count(all_modules)
    end
  end
end
