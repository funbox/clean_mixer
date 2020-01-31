defmodule Mix.Tasks.CleanMixer.List do
  use Mix.Task

  @shortdoc "Lists all project components and their deps"

  alias Mix.Tasks.CleanMixer.UI.ArchMapRendering.TextFormat

  @impl Mix.Task
  def run(_args, _options \\ []) do
    Mix.Task.run("compile")

    CleanMixer.arch_map()
    |> TextFormat.render()
    |> IO.puts()
  end
end
