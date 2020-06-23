defmodule CleanMixer.CodeCartographer do
  alias CleanMixer.CodeMap

  @type t :: {__MODULE__, module}

  @type options :: [include_deps: boolean]
  @callback get_code_map(options) :: CodeMap.t()

  @spec new(module) :: t
  def new(module), do: {__MODULE__, module}
end
