defmodule Mix.Tasks.CleanMixer.FileCycles do
  use Mix.Task

  alias CleanMixer.Workspace
  alias CleanMixer.Graph
  alias CleanMixer.ArchMap.Component

  @shortdoc "Lists all found cycles between files"

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    workspace = CleanMixer.workspace()

    workspace
    |> Workspace.file_cycles()
    |> Graph.uniq_cycles()
    |> group_by_component(workspace)
    |> Enum.map(&to_paths/1)
    |> render()
    |> IO.puts()
  end

  defp group_by_component(cycles, workspace) do
    Enum.group_by(
      cycles,
      fn [source_file | _rest] ->
        Workspace.component_with_file(workspace, source_file.path)
      end
    )
  end

  defp to_paths({nil, cycles}) do
    to_paths({Component.new("unknown component"), cycles})
  end

  defp to_paths({component, cycles}) do
    component_path = component.meta[:config_path] || ""
    {component, Enum.map(cycles, &cycle_to_paths(component_path, &1))}
  end

  defp cycle_to_paths(component_path, source_files) do
    Enum.map(source_files, &String.replace_prefix(&1.path, component_path <> "/", ""))
  end

  defp render([]) do
    "No cycles found"
  end

  defp render(cycles_by_component) do
    [
      "Cycles found:\n",
      Enum.map(cycles_by_component, &render_component_cycles/1)
    ]
  end

  defp render_component_cycles({component, cycles}) do
    [
      ["===> ", component.name, "\n"],
      Enum.map(cycles, &render_cycle/1),
      "\n"
    ]
  end

  defp render_cycle(paths) do
    [" |", "---> ", Enum.join(paths, " -> "), "\n"]
  end
end
