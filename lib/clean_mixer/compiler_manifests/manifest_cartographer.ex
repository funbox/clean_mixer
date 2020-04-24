defmodule CleanMixer.CompilerManifests.ManifestCartographer do
  alias CleanMixer.CodeCartographer
  @behaviour CodeCartographer

  alias CleanMixer.CompilerManifests.MixProject
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CompilerManifests.Manifest
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap
  alias CleanMixer.CompilerManifests.XrefSource
  alias Mix.Compilers.Elixir, as: Compiler

  @impl CodeCartographer
  def get_code_map() do
    apps =
      MixProject.current()
      |> MixProject.apps()

    elixir_files =
      apps
      |> Enum.map(&app_manifest_files/1)
      |> List.flatten()

    erlang_files =
      apps
      |> XrefSource.get()
      |> Enum.filter(&SourceFile.erlang?/1)

    CodeMap.new(elixir_files ++ erlang_files)
  end

  defp app_manifest_files(%App{path: app_path} = app) do
    app
    |> read_manifest()
    |> Enum.map(&SourceFile.prepend_path(&1, app_path))
  end

  defp read_manifest(%App{manifest_path: manifest_path}) do
    manifest_path
    |> Compiler.read_manifest()
    |> Manifest.parse()
  end
end
