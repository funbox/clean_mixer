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
    defstruct [:module_name, :type]

    @type ref_type :: :runtime | :struct | :compile

    @type t :: %__MODULE__{
            module_name: Manifest.module_name(),
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

    %Manifest{
      modules: manifest_modules(items),
      source_files: manifest_sources(items)
    }
  end

  @spec module_for_name(t(), module_name) :: Module.t() | nil
  def module_for_name(%Manifest{modules: modules}, module_name) do
    Enum.find(modules, &(&1.name == module_name))
  end

  defp manifest_modules(items) do
    for Compiler.module(sources: [path | _], module: name) <- items do
      %Module{name: name, path: path}
    end
  end

  defp manifest_sources(items) do
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

      %SourceFile{path: path, refs: references}
    end
  end

  defp references_of(type, modules) do
    modules |> Enum.map(&%Reference{module_name: &1, type: type})
  end
end
