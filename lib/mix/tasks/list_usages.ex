defmodule Mix.Tasks.CleanMixer.ListUsages do
  use Mix.Task

  @shortdoc "Lists all project component usages"

  alias CleanMixer.UI.ArchMapRendering.TextRenderes.Usages
  alias CleanMixer.UI.ListTask

  @impl Mix.Task
  def run(args, _options \\ []) do
    ListTask.run(args, Usages, extra_cli_desc())
  end

  def extra_cli_desc() do
    [
      name: "clean_mixer.list_usages",
      description: "Lists public files of components and their usages",
      flags: [
        verbose: [
          value_name: "VERBOSE",
          short: "-v",
          help: "prints file usages",
          default: false,
          required: false
        ]
      ]
    ]
  end
end
