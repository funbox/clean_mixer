defmodule CleanMixer.Config do
  alias CleanMixer.ArchConfig

  @default_name ".clean_mixer.exs"

  @spec load :: ArchConfig.t()
  def load() do
    project_root()
    |> Path.join(@default_name)
    |> File.read!()
    |> parse()
  end

  defp parse(data) do
    # TODO raise a meaningfull exc
    {params, _} = Code.eval_string(data)
    params |> Keyword.fetch!(:components) |> ArchConfig.new()
  end

  defp project_root do
    Regex.replace(~r/\/_build.+\z/, Mix.Project.build_path(), "")
  end
end
