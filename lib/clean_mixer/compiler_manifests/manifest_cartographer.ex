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
  alias CleanMixer.CompilerManifests.App

  @impl CodeCartographer
  def get_code_map(options \\ []) do
    apps =
      MixProject.current()
      |> MixProject.apps()

    apps =
      if options[:include_hex] do
        apps ++ App.current_deps()
      else
        apps
      end

    elixir_manifests =
      apps
      |> Enum.map(&app_manifest_files/1)
      |> List.flatten()

    elixir_manifests
    |> merge(XrefSource.get(apps))
    |> CodeMap.new()
  end

  defp merge(source_files, other_files) do
    Map.merge(to_map(source_files), to_map(other_files), fn _k, file1, file2 ->
      SourceFile.merge_references(file1, file2.references)
    end)
    |> Map.values()
  end

  defp to_map(source_files) do
    source_files |> Enum.map(&{&1.path, &1}) |> Enum.into(%{})
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
