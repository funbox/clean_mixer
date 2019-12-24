defmodule CleanMixer.ArchMap.Dependency do
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.FileDependency

  defstruct [:source, :target, :file_dependencies]

  @type t :: %__MODULE__{
          source: Component.t(),
          target: Component.t(),
          file_dependencies: list(FileDependency.t())
        }

  @spec new(Component.t(), Component.t(), list(FileDependency.t())) :: t
  def new(source, target, file_dependencies) do
    %__MODULE__{
      source: source,
      target: target,
      file_dependencies: file_dependencies
    }
  end

  defimpl String.Chars do
    def to_string(dep),
      do: "#{dep.source.name} -> #{dep.target.name}"
  end
end
