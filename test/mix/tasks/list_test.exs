defmodule Mix.Tasks.CleanMixer.ListTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "it lists project components and their dependencies" do
    output =
      capture_io(fn ->
        Mix.Task.run("clean_mixer.list")
      end)

    assert output =~ "arch_map -> code_map"
    assert output =~ "compiler_manifests -> code_map"
  end
end
