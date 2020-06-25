defmodule Mix.Tasks.CleanMixer.PlantumlTest do
  use ExUnit.Case

  alias Mix.Tasks.CleanMixer.Plantuml
  import ExUnit.CaptureIO

  setup tags do
    file_name = Map.get(tags, :output_file, Plantuml.default_file_name())

    on_exit(fn ->
      file_name |> Plantuml.image_file_name() |> File.rm()
      file_name |> Plantuml.plantuml_file_name() |> File.rm()
    end)

    :ok
  end

  test "it generates plantuml components diagram" do
    capture_io(fn ->
      Mix.Task.rerun("clean_mixer.plantuml", ["-v", "--include-hex"])
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

  test "it can group components" do
    capture_io(fn ->
      Mix.Task.rerun("clean_mixer.plantuml", ["--group"])
    end)

    plant_uml = Plantuml.plantuml_file_name() |> File.read!()
    assert plant_uml =~ ~s(package "core_domain" {)
  end

  @tag output_file: "my_custom_clean_mixer_file-#{:rand.uniform()}"
  test "it supports output file name customisation", %{output_file: output_file} do
    capture_io(fn ->
      Mix.Task.rerun("clean_mixer.plantuml", ["--output-file=#{output_file}"])
    end) =~ output_file

    plant_uml = Plantuml.plantuml_file_name(output_file) |> File.read!()
    assert String.starts_with?(plant_uml, "@startuml")
  end
end
