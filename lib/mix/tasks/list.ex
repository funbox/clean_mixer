defmodule Mix.Tasks.CleanMixer.List do
  use Mix.Task

  @shortdoc "Lists all project components and their deps"

  alias CleanMixer.UI.ArchMapRendering.TextRenderes.Dependencies
  alias CleanMixer.UI.ListTask

  @impl Mix.Task
  def run(args, _options \\ []) do
    ListTask.run(args, Dependencies, extra_cli_desc())
  end

  defp extra_cli_desc() do
    [
      name: "clean_mixer.list",
      description: "Lists components and there dependencies"
    ]
  end
end
