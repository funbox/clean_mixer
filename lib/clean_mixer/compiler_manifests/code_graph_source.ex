defmodule CleanMixer.CompilerManifests.CodeGraphSource do
  alias CleanMixer.CompilerManifests.MixProject
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CompilerManifests.Manifest
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph
  alias Mix.Compilers.Elixir, as: Compiler

  @spec get_code_graph() :: CodeGraph.t()
  def get_code_graph() do
    MixProject.current()
    |> MixProject.apps()
    |> Enum.map(&app_graph/1)
    |> Enum.reduce(&CodeGraph.merge/2)
  end

  defp app_graph(%App{path: app_path} = app) do
    app
    |> read_manifest()
    |> Enum.map(&SourceFile.prepend_path(&1, app_path))
    |> CodeGraph.new()
  end

  defp read_manifest(%App{manifest_path: manifest_path}) do
    manifest_path
    |> Compiler.read_manifest("")
    |> Manifest.parse()
  end
end
