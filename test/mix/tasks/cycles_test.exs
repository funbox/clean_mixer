defmodule Mix.Tasks.CleanMixer.CyclesTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "lists cycles in components dependencies" do
    output =
      capture_io(fn ->
        Mix.Task.run("clean_mixer.cycles")
      end)

    assert output =~ "No cycles found"
  end
end
