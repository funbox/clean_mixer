defmodule Mix.Tasks.CleanMixer.FileCycles do
  use Mix.Task

  alias CleanMixer.UI.CLI
  alias CleanMixer.Workspace
  alias CleanMixer.Graph
  alias CleanMixer.Graph.PathCycle
  alias CleanMixer.ArchMap.Component

  @shortdoc "Lists all found cycles between files"

  @infinity_depth 1000

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = CLI.parse_params(args, cli_description())
    workspace = CleanMixer.workspace()

    workspace
    |> Workspace.file_cycles()
    |> Graph.uniq_cycles()
    |> group_by_component(workspace)
    |> Enum.map(&to_paths(&1, params))
    |> filter_by_common_prefix(params)
    |> filter_by_depth(params[:depth])
    |> render()
    |> IO.puts()
  end

  defp cli_description() do
    [
      name: "clean_mixer.file_cycles",
      description: @shortdoc,
      parse_double_dash: true,
      options: [
        depth: [
          value_name: "DEPTH",
          parser: &parse_depth/1,
          long: "--depth",
          help: "filter cycles by max depth of its subdirectories (possible range values: x | x..y | x.. | ..x)",
          default: 0..@infinity_depth,
          required: false
        ]
      ],
      flags: [
        short_paths: [
          value_name: "SHORT_PATHS",
          short: "-s",
          long: "--short-paths",
          help: "trim paths by cutting component path and name prefixes"
        ],
        common_prefix: [
          value_name: "COMMON_PREFIX",
          long: "--common-prefix",
          help: "show only cycles with some common prefix in path"
        ]
      ]
    ]
  end

  defp parse_depth(str) do
    range =
      case String.split(str, "..") do
        [val] ->
          String.to_integer(val)..String.to_integer(val)

        ["", val] ->
          0..String.to_integer(val)

        [val, ""] ->
          String.to_integer(val)..@infinity_depth

        [min, max] ->
          String.to_integer(min)..String.to_integer(max)
      end

    {:ok, range}
  end

  defp group_by_component(cycles, workspace) do
    Enum.group_by(
      cycles,
      fn [source_file | _rest] ->
        Workspace.component_with_file(workspace, source_file.path)
      end
    )
  end

  defp to_paths({nil, cycles}, params) do
    to_paths({Component.new("unknown component"), cycles}, params)
  end

  defp to_paths({component, cycles}, params) do
    {component, Enum.map(cycles, &cycle_to_paths(&1, component, params))}
  end

  defp cycle_to_paths(source_files, component, params) do
    Enum.map(source_files, &shorten_path(&1.path, component, params))
  end

  defp shorten_path(path, _component, %{short_paths: false}), do: path

  defp shorten_path(path, component, %{short_paths: true}) do
    component_path = component.meta[:config_path] || ""

    path
    |> String.replace_prefix(component_path <> "/", "")
    |> String.replace_prefix(component.name <> "/", "")
  end

  defp filter_by_common_prefix(cycles_by_component, %{common_prefix: false}),
    do: cycles_by_component

  defp filter_by_common_prefix(cycles_by_component, %{common_prefix: true}) do
    filter_component_cycles(cycles_by_component, fn cycle ->
      cycle |> PathCycle.common_prefix() |> String.length() > 0
    end)
  end

  defp filter_by_depth(cycles_by_component, depth_range) do
    filter_component_cycles(cycles_by_component, fn cycle ->
      depth = PathCycle.depth(cycle)

      # complex comparison to work correctly with atoms (ex. :infinity)
      Enum.min(depth_range) <= depth && depth <= Enum.max(depth_range)
    end)
  end

  defp filter_component_cycles(cycles_by_component, filter_fun) do
    Enum.map(cycles_by_component, fn {component, cycles} ->
      {component, Enum.filter(cycles, filter_fun)}
    end)
  end

  defp render([]) do
    "No cycles found"
  end

  defp render(cycles_by_component) do
    Enum.map(cycles_by_component, &render_component_cycles/1)
  end

  defp render_component_cycles({_component, []}), do: []

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
