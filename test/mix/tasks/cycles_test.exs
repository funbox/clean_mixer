defmodule Mix.Tasks.CleanMixer.CyclesTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "lists cycles in components dependencies" do
    output =
      capture_io(fn ->
        Mix.Task.run("clean_mixer.component_cycles")
      end)

    assert output =~ "No cycles found"
  end
end
