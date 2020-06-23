defmodule Mix.Tasks.CleanMixer.Plantuml do
  use Mix.Task

  @shortdoc "Generates plantuml component diagram"

  alias CleanMixer.UI.ArchMapRendering.PlantUMLRenderer
  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.ArchMap
  alias CleanMixer.UI.CLI

  @default_file_name "clean_mixer"
  def default_file_name, do: @default_file_name

  def plantuml_file_name(file_name \\ @default_file_name), do: "#{file_name}.plantuml"
  def image_file_name(file_name \\ @default_file_name), do: "#{file_name}.png"

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args)

    arch_map =
      CleanMixer.arch_map(include_deps: params[:include_deps])
      |> skip_components(params[:except])

    component_metrics = MetricsMap.compute_component_metrics(arch_map)
    dependency_metrics = MetricsMap.compute_dep_metrics(arch_map, component_metrics)

    PlantUMLRenderer.render(arch_map, component_metrics, dependency_metrics, params)
    |> render_image(plantuml_file_name(params[:output_file]))

    Mix.Shell.IO.info("image file created at #{image_file_name(params[:output_file])}")
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
        ],
        output_file: [
          value_name: "OUTPUT_FILE",
          long: "--output-file",
          short: "-o",
          help: "Output file name.",
          default: @default_file_name,
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
        ],
        group: [
          value_name: "GROUP",
          long: "--group",
          short: "-g",
          help: "groups components by group tag",
          default: false,
          required: false
        ],
        include_deps: [
          value_name: "INCLUDE_DEPS",
          long: "--include-deps",
          help: "include mix dependencies"
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
    Mix.Shell.IO.cmd("env PLANTUML_LIMIT_SIZE=16384 java -jar #{planutml_jar_path()} #{filename}")
  end

  defp planutml_jar_path() do
    CleanMixer.path_to_asset("plantuml.jar")
  end
end
