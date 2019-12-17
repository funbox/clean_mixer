defmodule CleanMixer.CompilerManifests.MixProject do
  alias CleanMixer.CompilerManifests.App
  alias __MODULE__

  defstruct [:umbrella?, :deps]

  @type mix_dep :: map

  @type t :: %__MODULE__{
          umbrella?: boolean,
          deps: list(mix_dep)
        }

  def current() do
    %MixProject{
      umbrella?: Mix.Project.umbrella?(),
      deps: Mix.Dep.cached()
    }
  end

  def apps(%MixProject{umbrella?: true, deps: mix_deps}) do
    App.umbrella_project_apps(mix_deps)
  end

  def apps(%MixProject{umbrella?: false}) do
    [App.current()]
  end
end
