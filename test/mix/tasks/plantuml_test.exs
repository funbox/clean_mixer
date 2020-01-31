defmodule Mix.Tasks.CleanMixer.PlantumlTest do
  use ExUnit.Case

  alias Mix.Tasks.CleanMixer.Plantuml
  import ExUnit.CaptureIO

  setup do
    File.rm(Plantuml.image_file_name())
    File.rm(Plantuml.plantuml_file_name())
  end

  test "it generates plantuml components diagram" do
    capture_io(fn ->
      Mix.Task.run("clean_mixer.plantuml")
    end)

    plant_uml = Plantuml.plantuml_file_name() |> File.read!()
    assert plant_uml =~ "[arch_map] --> [code_map]"
    assert plant_uml =~ "[compiler_manifests] --> [code_map]"

    assert File.exists?(Plantuml.image_file_name())
  end
end
