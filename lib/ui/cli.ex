defmodule CleanMixer.UI.CLI do
  @spec parse_params(list(String.t()), Optimus.spec()) :: map
  def parse_params(args, cli_description) do
    parse_results =
      cli_description
      |> Optimus.new!()
      |> Optimus.parse!(args)

    Map.merge(parse_results.options, parse_results.flags)
  end
end
