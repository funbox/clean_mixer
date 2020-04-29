defmodule CleanMixer do
  alias CleanMixer.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchMap
  alias CleanMixer.Workspace

  @spec project() :: Project.t()
  def project() do
    Config.load()
    |> Project.new()
  end

  @spec arch_map() :: ArchMap.t()
  def arch_map() do
    project().arch_map
  end

  @spec new_workspace() :: Workspace.t()
  def new_workspace() do
    project() |> Workspace.new()
  end

  @moduledoc false
  @spec path_to_asset(Path.t()) :: Path.t()
  def path_to_asset(path) do
    :code.priv_dir(:clean_mixer) |> Path.join(path)
  end
end
