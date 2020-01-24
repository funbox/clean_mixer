defmodule CleanMixer.CompilerManifests.AppTest do
  use ExUnit.Case

  alias CleanMixer.CompilerManifests.App

  describe "&umbrella_project_apps/1" do
    test "returns all unmbrella apps for project deps" do
      deps = [
        %{
          app: :some_umbrella_app,
          scm: Mix.SCM.Path,
          opts: [from_umbrella: true, path: "apps/some_umbrella_app", build: "apps/some_umbrella_app/build"]
        },
        %{app: :wrong_app, scm: Mix.SCM.Path, opts: [from_umbrella: false]},
        %{app: :wrong_app, scm: Mix.SCM.Git, opts: [from_umbrella: true]}
      ]

      assert [
               %App{
                 path: "apps/some_umbrella_app",
                 name: :some_umbrella_app,
                 manifest_path: "apps/some_umbrella_app/build/.mix/compile.elixir"
               }
             ] == App.umbrella_project_apps(deps)
    end
  end
end
