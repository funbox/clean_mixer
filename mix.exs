defmodule CleanMixer.MixProject do
  use Mix.Project

  @source_url "https://github.com/funbox/clean_mixer"
  @version "0.11.3"

  def project do
    [
      app: :clean_mixer,
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      erlc_paths: elixirc_paths(Mix.env()),
      aliases: aliases(),
      preferred_cli_env: [
        cover: :test,
        "cover.html": :test,
        "cover.filter": :test,
        "cover.lint": :test
      ],
      test_coverage: [tool: ExCoveralls],
      package: package(),
      dialyzer: dialyzer(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :mix, :tools]
    ]
  end

  defp elixirc_paths(env) when env in [:test], do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      name: :clean_mixer,
      description: "Tools for code architecture analysis and linting",
      files: ["lib", "priv", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Miroslav Malkin"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end

  defp deps do
    [
      {:optimus, "~> 0.1.11"},
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.11", only: :test},
      {:excoveralls_linter, "~> 0.0.1", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev, runtime: false}
    ]
  end

  defp aliases do
    [
      cover: ["coveralls --sort cov:desc"],
      "cover.lint": ["coveralls.lint --missed-lines-threshold=2 --required-file-coverage=0.9"],
      "cover.html": ["coveralls.html"],
      "cover.detail": ["coveralls.detail --filter"]
    ]
  end

  defp dialyzer do
    case System.get_env("DIALYZER_PLT_FILE") do
      nil ->
        []

      file ->
        [plt_file: {:no_warn, file}]
    end
  end

  defp docs do
    [
      extras: [
        LICENSE: [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: "#v{@version}",
      formatters: ["html"]
    ]
  end
end
