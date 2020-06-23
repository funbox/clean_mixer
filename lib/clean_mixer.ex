defmodule CleanMixer do
  alias CleanMixer.Config
  alias CleanMixer.Project
  alias CleanMixer.ArchMap
  alias CleanMixer.Workspace
  alias CleanMixer.CodeCartographer

  @spec project(CodeCartographer.options()) :: Project.t()
  def project(options \\ []) do
    Config.load()
    |> Project.new(options)
  end

  @spec arch_map(CodeCartographer.options()) :: ArchMap.t()
  def arch_map(options \\ []) do
    project(options).arch_map
  end

  @spec workspace() :: Workspace.t()
  def workspace() do
    project() |> Workspace.new()
  end

  @moduledoc false
  @spec path_to_asset(Path.t()) :: Path.t()
  def path_to_asset(path) do
    :code.priv_dir(:clean_mixer) |> Path.join(path)
  end
end
