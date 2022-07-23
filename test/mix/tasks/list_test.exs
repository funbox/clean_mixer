defmodule Mix.Tasks.CleanMixer.ListTest do
  use ExUnit.Case
  alias CleanMixer.UI.ListTask

  import ExUnit.CaptureIO
  import AssertValue
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

  describe "step1/2" do
    setup do
      %{
        :args => ["-s", "arch_map", "-t", "code_map"]
      }
    end

    test "x2", %{:args => args} do
      Logger.debug("about to call ListTask.step1/2")
      actual = ListTask.step1(args)
      Logger.debug("about to inspect actual")
      actual_inspected = inspect(actual, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98)

      Logger.debug("inspect actual length #{String.length(actual_inspected)}")

      Logger.debug("about to set filename")
      filename = elixir_version_specific_fixture_filename("step1")
      Logger.debug("filename set to: #{filename}")
      Logger.debug("about to assert_value of actual_inspected")
      assert_value(actual_inspected == File.read!("test/support/fixtures/step_one_b_1.10.4.txt"))
      # assert_value(actual_inspected == File.read!(filename))
      # val = Code.string_to_quoted!(actual_inspected)
      # val = Code.eval_string(actual_inspected)
      # Logger.debug("#{inspect(val)}")
      # assert actual == val
      # assert is_struct(val)
    end
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
      # expected = step2_expected()
      actual_inspected = inspect(actual, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98)

      assert_value(actual_inspected == File.read!("test/support/fixtures/arch_map_filter_1.13.txt"))
      # val = Code.string_to_quoted!(actual_inspected)
      val = Code.eval_string(actual_inspected)
      Logger.debug("#{inspect(val)}")
      assert is_struct(val)

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

  defp elixir_version_specific_fixture_filename(basename) when is_binary(basename) do
    "test/support/fixtures/#{basename}_#{System.version()}.txt"
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
