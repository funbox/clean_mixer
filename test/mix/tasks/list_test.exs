defmodule Mix.Tasks.CleanMixer.ListTest do
  use ExUnit.Case
  alias CleanMixer.UI.ListTask

  import ExUnit.CaptureIO
  # import AssertValue
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

  # mix clean_mixer.list --file-sources=*/component.ex --file-targets=*/code_module.ex
  # elixir v1.10.4:
  # 10:52:02.946 [debug] "===> arch_map -> code_map\n * lib/clean_mixer/arch_map/component.ex\n |---> lib/clean_mixer/code_map/code_module.ex (runtime)\n"
  # elixir v1.13.2
  # 11:06:24.837 [debug] "===> arch_map -> code_map\n * lib/clean_mixer/arch_map/component.ex\n |---> lib/clean_mixer/code_map/code_module.ex (runtime,export)\n"
  test "filters components by file_source and file_target of deps" do
    output =
      capture_io(fn ->
        Mix.Task.rerun("clean_mixer.list", ["--file-sources=*/component.ex", "--file-targets=*/code_module.ex"])
      end)

    # Logger.configure(level: :debug, truncate: :infinity)

    # inspected_output =
    #   inspect(output, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98, binaries: :as_strings)

    # Logger.debug(inspected_output)
    assert output =~ "arch_map -> code_map"
    refute output =~ "compiler_manifests -> code_map"
  end

  @tag :pending
  describe "step1/2" do
    setup do
      %{
        :args => ["-s", "arch_map", "-t", "code_map"]
      }
    end

    test "x2", %{:args => args} do
      # Logger.configure(level: :debug, truncate: :infinity)
      # Logger.debug("about to call ListTask.step1/2")
      actual = ListTask.step1(args)
      # Logger.debug("about to inspect actual")
      actual_inspected = inspect(actual, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98)

      # Logger.debug("inspect actual length #{String.length(actual_inspected)}")

      # Logger.debug("about to set filename")
      filename = elixir_version_specific_fixture_filename("step1")
      # Logger.debug("filename set to: #{filename}")

      # Logger.debug("about to write value of actual_inspected to file")
      File.write!(filename, actual_inspected)
      # val = Code.string_to_quoted!(actual_inspected)
      # val = Code.eval_string(actual_inspected)
      # Logger.debug("#{inspect(val)}")
      # assert actual == val
      # assert is_struct(val)
    end
  end

  @tag :pending
  describe "step2/2" do
    setup do
      %{
        :step1 =>
          ["-s", "arch_map", "-t", "code_map"]
          |> ListTask.step1()
      }
    end

    @tag :pending
    test "x", %{:step1 => step1} do
      actual = ListTask.step2(step1, ["-s", "arch_map", "-t", "code_map"])
      # expected = step2_expected()
      actual_inspected = inspect(actual, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98)

      # val = Code.string_to_quoted!(actual_inspected)
      val = Code.eval_string(actual_inspected)
      # Logger.debug("#{inspect(val)}")
      assert is_struct(val)

      # Logger.debug("step2 diff: #{diff}")
      # assert match?()
      # assert actual == expected
      # assert Enum.at(Enum.sort(actual.components), 0) == Enum.at(Enum.sort(expected.components), 0)
    end
  end

  @tag :pending
  describe "step1 elixir version diffs" do
    setup do
      %{
        :elixir_1_10_4 => load_as_code("test/support/fixtures/step1_1.10.4.txt"),
        :elixir_1_13_2 => load_as_code("test/support/fixtures/step1_1.13.2.txt"),
        :elixir_1_13_2_b => load_as_code("test/support/fixtures/step1_1.13.2_b.txt")
      }
    end

    @tag :pending
    test "1.13 diffs?", %{:elixir_1_13_2 => old, :elixir_1_13_2_b => new} do
      old_slim = slim(old)
      new_slim = slim(new)

      # assert old_slim.components == new_slim.components
      assert old_slim.dependencies == new_slim.dependencies
    end

    @tag :pending
    test "x", %{:elixir_1_10_4 => old, :elixir_1_13_2 => new} do
      Logger.configure(level: :debug, truncate: :infinity)
      assert is_map(old)
      assert is_map(new)
      assert is_struct(old)
      assert is_struct(new)
      # assert is_struct(old, CleanMixer.ArchMap)
      # assert is_struct(new, CleanMixer.ArchMap)
      assert Map.keys(old) |> Enum.sort() == Map.keys(new) |> Enum.sort()
      # Logger.debug(inspect(Map.keys(old)))
      # 06:26:46.387 [debug] [:__struct__, :components, :dependencies]
      assert is_list(old.components)
      assert is_list(new.components)
      assert is_list(old.dependencies)
      assert is_list(new.dependencies)
      assert Enum.count(old.components) == Enum.count(new.components)
      # Logger.debug(inspect(List.myers_difference(old.dependencies, new.dependencies)))
      # old.dependencies
      # |> List.myers_difference(new.dependencies)
      # |> summarize_edit_script_verbs()
      # |> inspect()
      # |> Logger.debug()

      # assert Enum.all?(old.dependencies, fn dep -> is_struct(dep, CleanMixer.ArchMap.Dependency) end)
      # assert Enum.all?(new.dependencies, fn dep -> is_struct(dep, CleanMixer.ArchMap.Dependency) end)

      old_slim = slim(old)
      new_slim = slim(new)

      assert old_slim.components == new_slim.components
      assert old_slim.dependencies == new_slim.dependencies

      # common_dependencies = old.dependencies |> Enum.filter(fn dep -> Enum.member?(new.dependencies, dep) end)
      # assert Enum.count(common_dependencies) == 0

      # old_deps = Enum.map(old.dependencies, fn dep ->  end)
      # old_first_dep = List.first(Enum.sort(old.dependencies))
      # new_first_dep = List.first(Enum.sort(new.dependencies))

      # assert old_first_dep.source == new_first_dep.source
      assert Enum.count(old.dependencies) == Enum.count(new.dependencies)
    end
  end

  defp slim(%CleanMixer.ArchMap{} = value) do
    value
    |> Map.put(:components, Enum.sort(Enum.map(value.components, fn comp -> slim(comp) end)))
    |> Map.put(:dependencies, Enum.sort(Enum.map(value.dependencies, fn dep -> slim(dep) end)))
  end

  defp slim(%CleanMixer.ArchMap.Dependency{} = value) do
    value
    |> Map.put(:source, slim(Map.get(value, :source)))
    |> Map.put(:target, slim(Map.get(value, :target)))
    |> Map.drop([:files])
  end

  defp slim(%CleanMixer.ArchMap.Component{} = value) do
    value
    |> Map.drop([:files, :file_dependencies])
  end

  defp slim(value) do
    value
  end

  defp summarize_edit_script_verbs(keywords) when is_list(keywords) do
    keywords
    |> Enum.reduce(%{}, fn {verb, _nouns}, acc -> Map.put(acc, verb, Map.get(acc, verb, 0) + 1) end)
  end

  defp load_as_code(filename) do
    filename
    |> File.read!()
    |> Code.eval_string()
    |> elem(0)
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
    "test/support/fixtures/#{basename}_#{System.version()}_b.txt"
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
