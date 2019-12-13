defmodule CleanMixer.CompilerManifests.Manifest do
  alias CleanMixer.CompilerManifests.App
  require Mix.Compilers.Elixir, as: Compiler
  alias __MODULE__

  @type module_name :: module()

  defmodule Module do
    defstruct [:name, :path]

    @type t :: %__MODULE__{
            name: Manifest.module_name(),
            path: Path.t()
          }
  end

  defmodule Reference do
    defstruct [:module, :type]

    @type ref_type :: :runtime | :struct | :compile

    @type t :: %__MODULE__{
            module: Module.t(),
            type: ref_type
          }
  end

  defmodule SourceFile do
    defstruct [:path, :refs]

    @type t :: %__MODULE__{
            path: Path.t(),
            refs: list(Reference.t())
          }
  end

  defstruct [:modules, :source_files]

  @type t :: %__MODULE__{
          modules: list(Module.t()),
          source_files: list(SourceFile.t())
        }

  def read_manifest(%App{manifest_path: path}) do
    items = Compiler.read_manifest(path, "")
    modules = manifest_modules(items)

    %Manifest{
      modules: modules,
      source_files: manifest_sources(items, modules)
    }
  end

  defp manifest_modules(items) do
    for Compiler.module(sources: [path | _], module: name) <- items do
      %Module{name: name, path: path}
    end
  end

  defp manifest_sources(items, modules) do
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

      %SourceFile{path: path, refs: references}
    end
  end

  defp references_of(type, module_names, modules) do
    module_names
    |> Enum.map(fn name -> name |> module_for_name(modules) |> ref_for(type) end)
    |> Enum.reject(&is_nil/1)
  end

  defp module_for_name(module_name, modules) do
    Enum.find(modules, &(&1.name == module_name))
  end

  def ref_for(nil, _type), do: nil

  def ref_for(module, type) do
    %Reference{module: module, type: type}
  end
end
