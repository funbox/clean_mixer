defmodule CleanMixer.UI.ListTask do
  alias CleanMixer.UI.ArchMapRendering.TextRenderer
  alias CleanMixer.UI.CLI
  alias CleanMixer.UI.ArchMapFilter

  @spec run(list(String.t()), TextRenderer.t()) :: :ok
  def run(args, renderer, extra_cli_desc \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args, extra_cli_desc)

    CleanMixer.arch_map(include_hex: params[:include_hex])
    |> ArchMapFilter.filter(params)
    |> renderer.render(params)
    |> IO.puts()

    :ok
  end

  defp parse_params(args, extra_cli_desc) do
    CLI.parse_params(args, cli_description(extra_cli_desc))
  end

  defp cli_description(extra_cli_desc) do
    [
      name: extra_cli_desc[:name],
      description: extra_cli_desc[:description],
      parse_double_dash: true,
      options: ArchMapFilter.cli_options() ++ Keyword.get(extra_cli_desc, :options, []),
      flags:
        [
          include_hex: [
            value_name: "INCLUDE_HEX",
            long: "--include-hex",
            help: "include hex dependencies"
          ]
        ] ++ Keyword.get(extra_cli_desc, :flags, [])
    ]
  end
end
