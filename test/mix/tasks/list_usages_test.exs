defmodule Mix.Tasks.CleanMixer.ListUsagesTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "lists project components and their usages" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list_usages", ["-v", "--include-hex"])
      end)

    assert output =~ "code_map <- [arch_map, compiler_manifests, metrics]"

    assert output =~
             Regex.compile!(
               Regex.escape("lib/clean_mixer/code_map.ex") <>
                 "\n\\s*" <>
                 Regex.escape("| <--- ") <>
                 Regex.escape("lib/clean_mixer/compiler_manifests/manifest_cartographer.ex")
             )
  end
end
