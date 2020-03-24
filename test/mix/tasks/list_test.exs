defmodule Mix.Tasks.CleanMixer.ListTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "lists project components and their dependencies" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list")
      end)

    assert output =~ "arch_map -> code_map"
    assert output =~ "compiler_manifests -> code_map"
  end

  test "filters components by source and target deps" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list", ["-s", "arch_map", "-t", "code_map"])
      end)

    assert output =~ "arch_map -> code_map"
    refute output =~ "compiler_manifests -> code_map"
  end

  test "filters components by file_source and file_target of deps" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list", ["--file-sources=*/component.ex", "--file-targets=*/code_module.ex"])
      end)

    assert output =~ "arch_map -> code_map"
    refute output =~ "compiler_manifests -> code_map"
  end
end
