defmodule Mix.Tasks.CleanMixer.PlantUml do
  use Mix.Task

  @shortdoc "Renders component dependencies with plantuml"

  alias Mix.Tasks.CleanMixer.UI.Config
  alias Mix.Tasks.CleanMixer.UI.ArchMapRendering.PlantUML
  alias CleanMixer.Project

  @file_name "clean_mixer"

  def plantuml_file_name(), do: "#{@file_name}.plantuml"
  def image_file_name(), do: "#{@file_name}.png"

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    Config.load()
    |> Project.new()
    |> get_arch_map()
    |> PlantUML.render()
    |> render_image(plantuml_file_name())

    Mix.Shell.IO.info("image file created at #{image_file_name()}")
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map

  defp render_image(uml_data, filename) do
    File.write!(filename, uml_data)
    Mix.Shell.IO.cmd("java -jar #{planutml_jar_path()} #{filename}")
  end

  defp planutml_jar_path() do
    CleanMixer.path_to_asset("plantuml.jar")
  end
end
