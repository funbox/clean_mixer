defmodule Mix.Tasks.CleanMixer.List do
  use Mix.Task

  @shortdoc "Lists all project components and their deps"

  alias Mix.Tasks.CleanMixer.UI.Config
  alias Mix.Tasks.CleanMixer.UI.ArchMapRendering.TextFormat
  alias CleanMixer.Project

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Config.load()
    |> Project.new()
    |> get_arch_map()
    |> TextFormat.render()
    |> IO.puts()
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map
end
