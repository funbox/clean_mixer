defmodule Mix.Tasks.CleanMixer.PlantUmlTest do
  use ExUnit.Case

  alias Mix.Tasks.CleanMixer.PlantUml
  import ExUnit.CaptureIO

  setup do
    File.rm(PlantUml.image_file_name())
    File.rm(PlantUml.plantuml_file_name())
  end

  test "it generates plantuml components diagram" do
    capture_io(fn ->
      Mix.Task.run("clean_mixer.plant_uml")
    end)

    plant_uml = PlantUml.plantuml_file_name() |> File.read!()
    assert plant_uml =~ "[arch_map] --> [code_map]"
    assert plant_uml =~ "[compiler_manifests] --> [code_map]"

    assert File.exists?(PlantUml.image_file_name())
  end
end
