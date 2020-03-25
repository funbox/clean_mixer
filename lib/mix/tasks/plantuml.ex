defmodule Mix.Tasks.CleanMixer.Plantuml do
  use Mix.Task

  @shortdoc "Generates plantuml component diagram"

  alias CleanMixer.UI.ArchMapRendering.PlantUML
  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.ArchMap
  alias CleanMixer.UI.CLI

  @file_name "clean_mixer"

  def plantuml_file_name(), do: "#{@file_name}.plantuml"
  def image_file_name(), do: "#{@file_name}.png"

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args)

    arch_map = CleanMixer.arch_map() |> skip_components(params[:except])
    component_metrics = MetricsMap.compute_component_metrics(arch_map)
    dependency_metrics = MetricsMap.compute_dep_metrics(arch_map, component_metrics)

    PlantUML.render(arch_map, component_metrics, dependency_metrics, params)
    |> render_image(plantuml_file_name())

    Mix.Shell.IO.info("image file created at #{image_file_name()}")
  end

  defp parse_params(args) do
    CLI.parse_params(args, cli_description())
  end

  defp cli_description do
    [
      name: "clean_mixer.plantuml",
      description: @shortdoc,
      parse_double_dash: true,
      options: [
        except: [
          value_name: "EXCEPT",
          long: "--except",
          help: "Component names to skip (comma delimited)",
          parser: fn s -> {:ok, String.split(s, ",")} end,
          default: [],
          required: false
        ]
      ],
      flags: [
        verbose: [
          value_name: "VERBOSE",
          short: "-v",
          help: "prints links metrics",
          default: false,
          required: false
        ]
      ]
    ]
  end

  defp skip_components(arch_map, component_names) do
    components_to_skip = component_names |> Enum.map(&ArchMap.component(arch_map, &1))
    ArchMap.except(arch_map, components_to_skip)
  end

  defp render_image(uml_data, filename) do
    File.write!(filename, uml_data)
    Mix.Shell.IO.cmd("java -jar #{planutml_jar_path()} #{filename}")
  end

  defp planutml_jar_path() do
    CleanMixer.path_to_asset("plantuml.jar")
  end
end
