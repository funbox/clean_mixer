defmodule Mix.Tasks.CleanMixer.PlantumlTest do
  use ExUnit.Case

  alias Mix.Tasks.CleanMixer.Plantuml
  import ExUnit.CaptureIO

  setup do
    File.rm(Plantuml.image_file_name())
    File.rm(Plantuml.plantuml_file_name())

    :ok
  end

  test "it generates plantuml components diagram" do
    capture_io(fn ->
      Mix.Task.rerun("clean_mixer.plantuml", ["-v"])
    end)

    plant_uml = Plantuml.plantuml_file_name() |> File.read!()
    assert plant_uml =~ "[arch_map] -[#black]-> [code_map]"
    assert plant_uml =~ "[compiler_manifests] -[#black]-> [code_map]"

    assert File.exists?(Plantuml.image_file_name())
  end

  test "it can skip some components" do
    capture_io(fn ->
      Mix.Task.rerun("clean_mixer.plantuml", ["--except=compiler_manifests"])
    end)

    plant_uml = Plantuml.plantuml_file_name() |> File.read!()
    refute plant_uml =~ "[compiler_manifests]"
  end
end
