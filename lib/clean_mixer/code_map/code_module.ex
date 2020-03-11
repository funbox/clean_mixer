defmodule CleanMixer.CodeMap.CodeModule do
  @type name :: module()

  defstruct [:name, :path]

  @type t :: %__MODULE__{
          name: name,
          path: Path.t()
        }

  @spec new(name, Path.t()) :: t
  def new(name, path) do
    %__MODULE__{name: name, path: path}
  end

  @spec behaviour?(name) :: boolean
  def behaviour?(module_name) do
    {:module, _} = Code.ensure_loaded(module_name)
    function_exported?(module_name, :behaviour_info, 1)
  end
end
