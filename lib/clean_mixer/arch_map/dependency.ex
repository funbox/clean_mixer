defmodule CleanMixer.ArchMap.Dependency do
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.FileDependency

  defstruct [:source, :target, :files]

  @type t :: %__MODULE__{
          source: Component.t(),
          target: Component.t(),
          files: list(FileDependency.t())
        }

  @spec new(Component.t(), Component.t(), list(FileDependency.t())) :: t
  def new(source, target, file_deps \\ []) do
    %__MODULE__{
      source: source,
      target: target,
      files: file_deps
    }
  end
end
