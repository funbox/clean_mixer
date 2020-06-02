defmodule CleanMixer.Graph.PathCycle do
  alias CleanMixer.Graph

  @spec depth(Graph.cycle(String.t())) :: non_neg_integer() | :infinity
  def depth(cycle) do
    case common_prefix(cycle) do
      "" ->
        :infinity

      prefix ->
        cycle
        |> Enum.map(&String.replace_prefix(&1, prefix, ""))
        |> Enum.map(&count_occurences(&1, "/"))
        |> Enum.max()
    end
  end

  def common_prefix(strings) do
    min = Enum.min(strings)
    max = Enum.max(strings)

    index = Enum.find_index(0..String.length(min), fn i -> String.at(min, i) != String.at(max, i) end)

    if index do
      String.slice(min, 0, index)
    else
      ""
    end
  end

  defp count_occurences(str, char) do
    str
    |> String.graphemes()
    |> Enum.count(&(&1 == char))
  end
end
