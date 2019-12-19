defmodule CleanMixer.ArchMap.Dependency do
  alias CleanMixer.ArchMap.Component
  defstruct [:source, :target]

  @type t :: %__MODULE__{
          source: Component.t(),
          target: Component.t()
        }

  @spec new(Component.t(), Component.t()) :: t
  def new(source, target) do
    %__MODULE__{
      source: source,
      target: target
    }
  end

  defimpl String.Chars do
    def to_string(dep),
      do: "#{dep.source.name} -> #{dep.target.name}"
  end
end
