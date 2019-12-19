defmodule CleanMixer.CodeCartographer do
  alias CleanMixer.CodeMap

  @type t :: {__MODULE__, module}

  @callback get_code_map() :: CodeMap.t()

  @spec new(module) :: t
  def new(module), do: {__MODULE__, module}
end
