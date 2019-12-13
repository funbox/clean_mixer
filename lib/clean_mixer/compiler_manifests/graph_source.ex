defmodule CleanMixer.Xref.CodeGraphSource do
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CompilerManifests.Manifest

  alias CleanMixer.CodeGraph.Dependency
  alias CleanMixer.CodeGraph.SourceFile

  def fetch(_options \\ []) do
    App.project_apps()
    |> IO.inspect()
    |> Enum.flat_map(&fetch_for_app/1)
    |> Enum.reject(&is_nil/1)
    |> Enum.uniq()
  end

  defp fetch_for_app(%App{path: app_path} = app) do
    manifest = Manifest.read_manifest(app)

    for %Manifest.SourceFile{path: path, refs: refs} <- manifest.source_files,
        %Manifest.Reference{module_name: module_name, type: type} <- refs do
      callee_module = Manifest.module_for_name(manifest, module_name)

      if callee_module != nil do
        caller_path = Path.join(app_path, path)
        callee_path = Path.join(app_path, callee_module.path)
        Dependency.new(SourceFile.new(caller_path), SourceFile.new(callee_path), type)
      end
    end
  end
end
