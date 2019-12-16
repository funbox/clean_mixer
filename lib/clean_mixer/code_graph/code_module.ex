defmodule CleanMixer.CodeGraph.CodeModule do
  @type name :: module()

  defstruct [:name, :path]

  @type t :: %__MODULE__{
          name: name,
          path: Path.t()
        }

  @spec prepend_path(t, Path.t()) :: t
  def prepend_path(module, new_parent_path) do
    %__MODULE__{module | path: Path.join(new_parent_path, module.path)}
  end
end
