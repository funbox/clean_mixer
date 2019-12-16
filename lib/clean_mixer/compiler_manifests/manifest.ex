defmodule CleanMixer.CompilerManifests.Manifest do
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CodeGraph.CodeModule
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph.ModuleReference

  require Mix.Compilers.Elixir, as: Compiler

  alias __MODULE__

  defstruct modules: [],
            source_files: []

  @type t :: %__MODULE__{
          modules: list(CodeModule.t()),
          source_files: list(SourceFile.t())
        }

  def read_manifest(%App{manifest_path: path}) do
    items = Compiler.read_manifest(path, "")

    modules = manifest_modules(items)
    files = manifest_files(items, modules)

    %Manifest{
      modules: modules,
      source_files: files
    }
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
        references_of(:compile, compile_references, modules) ++
          references_of(:runtime, runtime_references, modules) ++
          references_of(:struct, struct_references, modules)

      %SourceFile{
        path: path,
        modules: modules_for_path(path, modules),
        references: references
      }
    end
  end

  defp modules_for_path(path, modules) do
    Enum.filter(modules, &(&1.path == path))
  end

  defp references_of(type, module_names, modules) do
    module_names
    |> Enum.map(fn name -> name |> module_for_name(modules) |> ref_for(type) end)
    |> Enum.reject(&is_nil/1)
  end

  defp module_for_name(name, modules) do
    Enum.find(modules, &(&1.name == name))
  end

  def ref_for(nil, _type), do: nil

  def ref_for(module, type) do
    %ModuleReference{module: module, ref_type: type}
  end
end
