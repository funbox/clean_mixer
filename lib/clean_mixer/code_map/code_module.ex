defmodule CleanMixer.CodeMap.CodeModule do
  @type name :: module()

  defstruct [:name, :path, :behaviour?]

  @type t :: %__MODULE__{
          name: name,
          path: Path.t(),
          behaviour?: boolean
        }

  @spec new(name, Path.t()) :: t
  def new(name, path) do
    %__MODULE__{name: name, path: path, behaviour?: behaviour?(name)}
  end

  defp behaviour?(module_name) do
    {:module, _} = Code.ensure_loaded(module_name)
    function_exported?(module_name, :behaviour_info, 1)
  end
end
