defmodule Mix.Tasks.CleanMixer.BehavioursTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "lists all behaviours and their implementations" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.behaviours")
      end)

    assert output =~ "===> CleanMixer.CodeCartographer"
    assert output =~ "---> CleanMixer.CompilerManifests.ManifestCartographer"
  end

  test "filters by component" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.behaviours", ["-c", "compiler_manifests"])
      end)

    assert output =~ "===> CleanMixer.CodeCartographer"
    refute output =~ "===> Inspect"
  end

  test "filters by beheaviour" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.behaviours", ["-b", "Inspect"])
      end)

    assert output =~ "===> Inspect"
    refute output =~ "===> CleanMixer.CodeCartographer"
  end
end
