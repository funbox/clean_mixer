defmodule CleanMixer.CompilerManifests.Manifest do
  alias CleanMixer.CodeMap.CodeModule
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference

  require Mix.Compilers.Elixir, as: Compiler

  @spec parse({modules :: list(term), sources :: list(term)}) :: list(SourceFile.t())
  def parse({module_items, source_items}) do
    modules = manifest_modules(module_items)
    manifest_files(source_items, modules)
  end

  def only_parse({module_items, source_items}) do
    modules = manifest_modules(module_items)
    manifest_files(source_items, modules)
  end

  def only_manifest_modules({items, _}) do
    for Compiler.module(sources: [path | _], module: name) <- items do
      CodeModule.new(name, path)
    end
  end

  def only_manifest_files_source_params(items, modules) do
    %{:items => items, :modules => modules}
    # for source <- items do
    #   source_params = Compiler.source(source)

    # references =
    #   references_of(:compile, source_params[:compile_references]) ++
    #     references_of(:runtime, source_params[:runtime_references]) ++
    #     references_of(:struct, source_params[:struct_references]) ++
    #     references_of(:export, source_params[:export_references])

    # %SourceFile{
    #   path: source_params[:source],
    #   modules: modules_for_path(source_params[:source], modules) |> Enum.map(& &1.name),
    #   references: references
    # }
    # end
  end

  defp manifest_modules(items) do
    for Compiler.module(sources: [path | _], module: name) <- items do
      CodeModule.new(name, path)
    end
  end

  defp manifest_files(items, modules) do
    for source <- items do
      source_params = Compiler.source(source)

      references =
        references_of(:compile, source_params[:compile_references]) ++
          references_of(:runtime, source_params[:runtime_references]) ++
          references_of(:struct, source_params[:struct_references]) ++
          references_of(:export, source_params[:export_references])

      %SourceFile{
        path: source_params[:source],
        modules: modules_for_path(source_params[:source], modules) |> Enum.map(& &1.name),
        references: references
      }
    end
  end

  defp modules_for_path(path, modules) do
    Enum.filter(modules, &(&1.path == path))
  end

  defp references_of(_type, _module_names = nil) do
    []
  end

  defp references_of(type, module_names) do
    module_names |> Enum.map(&ref_for(&1, type))
  end

  defp ref_for(module_name, type) do
    %ModuleReference{module_name: module_name, ref_type: type}
  end
end
