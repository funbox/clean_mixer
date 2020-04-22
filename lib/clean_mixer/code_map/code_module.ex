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

  @spec abstract?(name) :: boolean
  def abstract?(module_name) do
    behaviour?(module_name) || !has_implementation?(module_name)
  end

  @spec has_implementation?(name) :: boolean
  def has_implementation?(module_name) do
    struct?(module_name) || has_functions?(module_name)
  end

  @spec behaviour?(name) :: boolean
  def behaviour?(module_name) do
    {:module, _} = Code.ensure_loaded(module_name)
    function_exported?(module_name, :behaviour_info, 1)
  end

  @spec struct?(name) :: boolean
  def struct?(module_name) do
    {:module, _} = Code.ensure_loaded(module_name)
    function_exported?(module_name, :__struct__, 0)
  end

  @spec has_functions?(name) :: boolean
  def has_functions?(module_name) do
    {:module, _} = Code.ensure_loaded(module_name)
    module_name.__info__(:functions) != [] || module_name.__info__(:macros) != []
  end
end
