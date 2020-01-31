defmodule Mix.Tasks.CleanMixer.Plantuml do
  use Mix.Task

  @shortdoc "Renders component dependencies with plantuml"

  alias Mix.Tasks.CleanMixer.UI.ArchMapRendering.PlantUML

  @file_name "clean_mixer"

  def plantuml_file_name(), do: "#{@file_name}.plantuml"
  def image_file_name(), do: "#{@file_name}.png"

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    CleanMixer.arch_map()
    |> PlantUML.render()
    |> render_image(plantuml_file_name())

    Mix.Shell.IO.info("image file created at #{image_file_name()}")
  end

  defp render_image(uml_data, filename) do
    File.write!(filename, uml_data)
    Mix.Shell.IO.cmd("java -jar #{planutml_jar_path()} #{filename}")
  end

  defp planutml_jar_path() do
    CleanMixer.path_to_asset("plantuml.jar")
  end
end
