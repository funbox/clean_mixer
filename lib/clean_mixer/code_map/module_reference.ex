defmodule CleanMixer.CodeMap.ModuleReference do
  alias CleanMixer.CodeMap.CodeModule

  @type ref_type :: :compile | :struct | :runtime

  defstruct [:module_name, :ref_type]

  @type t :: %__MODULE__{
          module_name: CodeModule.name(),
          ref_type: ref_type
        }

  @spec new(CodeModule.name(), ref_type) :: t
  def new(module_name, type) do
    %__MODULE__{
      module_name: module_name,
      ref_type: type
    }
  end
end
