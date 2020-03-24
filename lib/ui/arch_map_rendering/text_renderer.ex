defmodule CleanMixer.UI.ArchMapRendering.TextRenderer do
  alias CleanMixer.ArchMap

  @type t :: module

  @callback render(ArchMap.t(), keyword) :: String.t()
end
