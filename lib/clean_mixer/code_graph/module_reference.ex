defmodule CleanMixer.CodeGraph.ModuleReference do
  alias CleanMixer.CodeGraph.CodeModule

  @type ref_type :: :compile | :struct | :runtime

  defstruct [:module, :ref_type]

  @type t :: %__MODULE__{
          module: CodeModule.t(),
          ref_type: ref_type
        }

  @spec new(CodeModule.t(), ref_type) :: t
  def new(module, type) do
    %__MODULE__{
      module: module,
      ref_type: type
    }
  end
end
