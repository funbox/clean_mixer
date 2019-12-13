defmodule CleanMixer.MixProject do
  use Mix.Project

  def project do
    [
      app: :clean_mixer,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :mix]
    ]
  end

  defp deps do
    [{:dialyxir, "~> 1.0.0-rc.7", only: [:dev, :test], runtime: false}]
  end
end
