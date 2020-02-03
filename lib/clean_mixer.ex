defmodule CleanMixer do
  alias CleanMixer.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchGraph
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  @spec arch_map() :: ArchMap.t()
  def arch_map() do
    Config.load()
    |> Project.new()
    |> get_arch_map()
  end

  @spec component_cycles(ArchMap.t()) :: [ArchGraph.cycle()]
  def component_cycles(arch_map) do
    arch_map
    |> ArchGraph.build_from()
    |> ArchGraph.cycles()
  end

  @spec component(Component.name(), ArchMap.t()) :: Component.t() | nil
  def component(name, arch_map) do
    ArchMap.component(arch_map, name)
  end

  @spec dependencies_of(Component.t(), ArchMap.t()) :: list(Dependency.t())
  def dependencies_of(comp, arch_map) do
    ArchMap.dependencies_of(arch_map, comp)
  end

  @spec dependency?(Component.t(), Component.t(), ArchMap.t()) :: boolean
  def dependency?(comp, target_comp, arch_map) do
    deps = dependencies_of(comp, arch_map) |> Enum.map(& &1.target)
    target_comp in deps
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map

  @moduledoc false
  @spec path_to_asset(Path.t()) :: Path.t()
  def path_to_asset(path) do
    :code.priv_dir(:clean_mixer) |> Path.join(path)
  end
end
