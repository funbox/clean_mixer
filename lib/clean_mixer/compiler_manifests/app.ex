defmodule CleanMixer.CompilerManifests.App do
  alias __MODULE__

  @manifest_filename "compile.elixir"

  defstruct [:path, :name, :manifest_path]

  @type t :: %{
          path: Path.t(),
          name: :atom,
          manifest_path: Path.t()
        }

  def project_apps() do
    if Mix.Project.umbrella?() do
      umbrella_apps()
    else
      [current_app()]
    end
  end

  defp umbrella_apps do
    for %{app: app_name, scm: Mix.SCM.Path, opts: opts} <- Mix.Dep.cached(), opts[:from_umbrella] do
      %App{
        path: opts[:path],
        name: app_name,
        manifest_path: Path.join([opts[:build], ".mix", @manifest_filename])
      }
    end
  end

  defp current_app() do
    %App{
      path: "",
      name: Mix.Project.config() |> Keyword.fetch!(:app),
      manifest_path: Mix.Project.manifest_path() |> Path.join(@manifest_filename)
    }
  end
end
