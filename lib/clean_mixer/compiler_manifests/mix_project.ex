defmodule CleanMixer.CompilerManifests.MixProject do
  alias CleanMixer.CompilerManifests.App

  defstruct [:umbrella?, :deps]

  @type mix_dep :: map

  @type t :: %__MODULE__{
          umbrella?: boolean,
          deps: list(mix_dep)
        }

  def current() do
    %__MODULE__{
      umbrella?: Mix.Project.umbrella?(),
      deps: Mix.Dep.cached()
    }
  end

  def apps(%__MODULE__{umbrella?: true, deps: mix_deps}) do
    App.umbrella_project_apps(mix_deps)
  end

  def apps(%__MODULE__{umbrella?: false}) do
    [App.current()]
  end
end
