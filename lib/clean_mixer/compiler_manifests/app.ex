defmodule CleanMixer.CompilerManifests.App do
  alias CleanMixer.CompilerManifests.MixProject

  @manifest_filename "compile.elixir"

  defstruct [:path, :build_path, :name, :manifest_path]

  @type t :: %__MODULE__{
          path: Path.t(),
          build_path: Path.t(),
          name: :atom,
          manifest_path: Path.t()
        }

  @spec umbrella_project_apps(list(MixProject.mix_dep())) :: list(t)
  def umbrella_project_apps(deps) do
    for %{app: app_name, scm: Mix.SCM.Path, opts: opts} <- deps, opts[:from_umbrella] do
      %__MODULE__{
        path: opts[:path],
        build_path: opts[:build],
        name: app_name,
        manifest_path: Path.join([opts[:build], ".mix", @manifest_filename])
      }
    end
  end

  @spec current() :: t
  def current() do
    %__MODULE__{
      path: "",
      build_path: Mix.Project.app_path(),
      name: Mix.Project.config() |> Keyword.fetch!(:app),
      manifest_path: Mix.Project.manifest_path() |> Path.join(@manifest_filename)
    }
  end
end
