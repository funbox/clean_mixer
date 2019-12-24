defmodule CleanMixer.CompilerManifests.Manifest do
  alias CleanMixer.CodeMap.CodeModule
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference
  alias CleanMixer.CodeMap.CodeModule

  require Mix.Compilers.Elixir, as: Compiler

  @spec parse(list(term)) :: list(SourceFile.t())
  def parse(items) do
    modules = manifest_modules(items)
    manifest_files(items, modules)
  end

  defp manifest_modules(items) do
    for Compiler.module(sources: [path | _], module: name) <- items do
      %CodeModule{name: name, path: path}
    end
  end

  defp manifest_files(items, modules) do
    for Compiler.source(
          source: path,
          compile_references: compile_references,
          struct_references: struct_references,
          runtime_references: runtime_references
        ) <- items do
      references =
        references_of(:compile, compile_references) ++
          references_of(:runtime, runtime_references) ++
          references_of(:struct, struct_references)

      %SourceFile{
        path: path,
        modules: modules_for_path(path, modules) |> Enum.map(& &1.name),
        references: references
      }
    end
  end

  defp modules_for_path(path, modules) do
    Enum.filter(modules, &(&1.path == path))
  end

  defp references_of(type, module_names) do
    module_names |> Enum.map(&ref_for(&1, type))
  end

  defp ref_for(module_name, type) do
    %ModuleReference{module_name: module_name, ref_type: type}
  end
end
