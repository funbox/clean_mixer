defmodule CleanMixer.MixProject do
  use Mix.Project

  def project do
    [
      app: :clean_mixer,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      aliases: aliases(),
      preferred_cli_env: [
        cover: :test,
        "cover.html": :test,
        "cover.filter": :test,
        "cover.lint": :test
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
      extra_applications: [:logger, :mix]
    ]
  end

  defp elixirc_paths(env) when env in [:test], do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.11", only: :test}
    ]
  end

  defp aliases do
    [
      lint: ["dialyzer", "credo"],
      check: ["test", "lint"],
      cover: ["coveralls --sort cov:desc --umbrella"],
      "cover.lint": ["coveralls.lint --missed-lines-threshold=2 --required-file-coverage=0.9"],
      "cover.html": ["coveralls.html --umbrella"],
      "cover.filter": ["coveralls.detail --umbrella --filter"]
    ]
  end
end
