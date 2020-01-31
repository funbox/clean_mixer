defmodule CleanMixer do
  alias CleanMixer.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchGraph

  @spec arch_map() :: ArchMap.t()
  def arch_map() do
    Config.load()
    |> Project.new()
    |> get_arch_map()
  end

  @spec component_cycles :: [ArchGraph.cycle()]
  def component_cycles() do
    arch_map()
    |> ArchGraph.build_from()
    |> ArchGraph.cycles()
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map

  @moduledoc false
  @spec path_to_asset(Path.t()) :: Path.t()
  def path_to_asset(path) do
    :code.priv_dir(:clean_mixer) |> Path.join(path)
  end
end
