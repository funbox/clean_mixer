defmodule CleanMixer.ArchMap.Filter.Pattern do
  defstruct [:regexp]

  @opaque t :: %__MODULE__{
            regexp: Regex.t()
          }

  @spec new(String.t()) :: t
  def new(pattern) do
    compiled_pattern =
      pattern
      |> Regex.escape()
      |> String.replace("\\*", ".*")

    regexp = Regex.compile!("\\A#{compiled_pattern}\\z")
    %__MODULE__{regexp: regexp}
  end

  @spec any?(String.t(), list(t)) :: boolean
  def any?(string, patterns) do
    Enum.any?(patterns, &match_str?(&1, string))
  end

  @spec match_str?(t, String.t()) :: boolean
  def match_str?(%__MODULE__{regexp: regexp}, string) do
    Regex.match?(regexp, string)
  end
end
