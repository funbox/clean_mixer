defmodule CleanMixer.Xref.CodeGraphSource do
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CompilerManifests.Manifest
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph

  def fetch(_options \\ []) do
    App.project_apps()
    |> Enum.map(&app_graph/1)
    |> Enum.reduce(&CodeGraph.merge/2)
  end

  defp app_graph(%App{path: app_path} = app) do
    manifest = Manifest.read_manifest(app)

    manifest.source_files
    |> Enum.map(&SourceFile.prepend_path(&1, app_path))
    |> CodeGraph.new()
  end
end
