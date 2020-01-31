defmodule Mix.Tasks.CleanMixer.Cycles do
  use Mix.Task

  @shortdoc "Lists all found cycles between components"

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    CleanMixer.component_cycles()
    |> render_cycles()
  end

  defp render_cycles([]) do
    IO.puts("No cycles found")
  end

  defp render_cycles(cycles) do
    IO.puts("Cycles found:")
    Enum.each(cycles, &render_cycle/1)
  end

  defp render_cycle(cycle) do
    cycle |> Enum.map(& &1.name) |> Enum.join(" -> ") |> IO.puts()
  end
end
