defmodule Mix.Tasks.CleanMixer.Plantuml do
  use Mix.Task

  @shortdoc "Renders component dependencies with plantuml"

  alias CleanMixer.UI.ArchMapRendering.PlantUML
  alias CleanMixer.Metrics.MetricsMap
  alias CleanMixer.ArchMap

  @file_name "clean_mixer"

  def plantuml_file_name(), do: "#{@file_name}.plantuml"
  def image_file_name(), do: "#{@file_name}.png"

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args)

    arch_map = CleanMixer.arch_map() |> skip_components(params[:except])
    metrics_map = MetricsMap.compute(arch_map)

    PlantUML.render(arch_map, metrics_map)
    |> render_image(plantuml_file_name())

    Mix.Shell.IO.info("image file created at #{image_file_name()}")
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
      name: "clean_mixer.plantuml",
      description: "Generates plantuml component diagram",
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
