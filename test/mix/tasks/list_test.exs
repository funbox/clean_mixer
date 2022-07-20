defmodule Mix.Tasks.CleanMixer.ListTest do
  use ExUnit.Case
  alias CleanMixer.UI.ListTask

  import ExUnit.CaptureIO
  require Logger

  test "lists project components and their dependencies" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list", ["--include-hex"])
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

  describe "step2/2" do
    setup do
      %{
        :step1 =>
          ["-s", "arch_map", "-t", "code_map"]
          |> ListTask.step1()
      }
    end

    test "x", %{:step1 => step1} do
      actual = ListTask.step2(step1, ["-s", "arch_map", "-t", "code_map"])
      expected = step2_expected()

      # Logger.debug("step2 diff: #{diff}")
      # assert match?()
      # assert actual == expected
      # assert Enum.at(Enum.sort(actual.components), 0) == Enum.at(Enum.sort(expected.components), 0)
    end
  end

  defp step2_expected do
    "arch_map_filter.exs"
    |> load()
  end

  defp load(filename) do
    project_root()
    |> Path.join(filename)
    |> File.read!()
    |> Code.eval_string()

    # |> parse()
  end

  # defp parse(data) do
  #   # TODO raise a meaningfull exc

  #   {params, _} = Code.eval_string(data)
  #   config = params |> Keyword.fetch!(:components) |> ArchConfig.new()

  #   case ArchConfig.validate(config) do
  #     :ok -> config
  #     {:error, error} -> raise "error parsing #{@default_name} config; #{error}"
  #   end
  # end

  defp project_root do
    Regex.replace(~r/\/_build.+\z/, Mix.Project.build_path(), "")
  end
end
