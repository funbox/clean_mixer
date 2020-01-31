defmodule Mix.Tasks.CleanMixer.Cycles do
  use Mix.Task

  @shortdoc "Lists all found cycles between components"

  alias Mix.Tasks.CleanMixer.UI.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchGraph

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    Config.load()
    |> Project.new()
    |> get_arch_map()
    |> ArchGraph.build_from()
    |> ArchGraph.cycles()
    |> render_cycles()
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map

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
