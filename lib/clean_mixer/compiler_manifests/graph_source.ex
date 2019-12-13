defmodule CleanMixer.Xref.CodeGraphSource do
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CompilerManifests.Manifest

  alias CleanMixer.CodeGraph.Dependency
  alias CleanMixer.CodeGraph.SourceFile

  def fetch(_options \\ []) do
    App.project_apps()
    |> Enum.map(&fetch_for_app/1)
    |> List.flatten()
  end

  defp fetch_for_app(%App{path: app_path} = app) do
    manifest = Manifest.read_manifest(app)

    for %Manifest.SourceFile{path: path, refs: refs} <- manifest.source_files do
      source_path = Path.join(app_path, path)

      refs
      |> Enum.map(fn ref -> {path_for(app, ref.module), ref.type} end)
      |> group_values_by_key()
      |> Enum.map(fn {target_path, ref_types} ->
        Dependency.new(SourceFile.new(source_path), SourceFile.new(target_path), ref_types)
      end)
    end
  end

  defp group_values_by_key(enum) do
    Enum.group_by(enum, fn {k, _v} -> k end, fn {_k, v} -> v end)
  end

  defp path_for(%App{path: app_path}, %Manifest.Module{path: path}),
    do: Path.join(app_path, path)
end
