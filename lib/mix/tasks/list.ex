defmodule Mix.Tasks.CleanMixer.List do
  use Mix.Task

  @shortdoc "Lists all project components and their deps"

  alias Mix.Tasks.CleanMixer.UI.ArchMapRendering.TextFormat
  alias CleanMixer.ArchMap.Filter

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args)

    IO.inspect(params)

    CleanMixer.arch_map()
    |> filter_arch_map(params)
    |> TextFormat.render()
    |> IO.puts()
  end

  defp filter_arch_map(arch_map, params) do
    Enum.reduce(params, arch_map, &filter/2)
  end

  defp filter({:sources, [_ | _] = sources}, arch_map) do
    Filter.with_sources(arch_map, sources)
  end

  defp filter({:targets, [_ | _] = targets}, arch_map) do
    Filter.with_targets(arch_map, targets)
  end

  defp filter(_, arch_map) do
    arch_map
  end

  defp parse_params(args) do
    parse_results =
      cli_description()
      |> Optimus.new!()
      |> Optimus.parse!(args)

    parse_results.options
  end

  defp cli_description do
    [
      name: "clean_mixer.list",
      description: "Lists components and there dependencies",
      parse_double_dash: true,
      options: [
        sources: [
          value_name: "SOURCES",
          short: "-s",
          long: "--sources",
          help: "filter by deps sources",
          parser: fn s -> {:ok, String.split(s, ",")} end,
          default: [],
          required: false
        ],
        targets: [
          value_name: "TARGETS",
          short: "-t",
          long: "--targets",
          help: "filter by deps targets",
          parser: fn s -> {:ok, String.split(s, ",")} end,
          default: [],
          required: false
        ]
      ]
    ]
  end
end
