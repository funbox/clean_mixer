defmodule CleanMixer do
  alias CleanMixer.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchMap
  alias CleanMixer.Workspace

  @spec arch_map() :: ArchMap.t()
  def arch_map() do
    Config.load()
    |> Project.new()
    |> get_arch_map()
  end

  @spec new_workspace() :: Workspace.t()
  def new_workspace() do
    Workspace.new()
  end

  defp get_arch_map(%Project{arch_map: arch_map}), do: arch_map

  @moduledoc false
  @spec path_to_asset(Path.t()) :: Path.t()
  def path_to_asset(path) do
    :code.priv_dir(:clean_mixer) |> Path.join(path)
  end
end
