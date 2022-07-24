defmodule CleanMixer.CompilerManifests.ManifestCartographerTest do
  use ExUnit.Case

  alias CleanMixer.CompilerManifests.ManifestCartographer
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference
  alias CleanMixer.CompilerManifests.Manifest

  require Logger

  test "returns code map with files of current project" do
    assert %CodeMap{files: files} = ManifestCartographer.get_code_map()

    doge_owner_module = Enum.find(files, &(&1.path =~ "doge_owner.ex"))

    assert %SourceFile{
             path: "test/support/code_fixtures/doge_owner.ex",
             modules: [CleanMixer.Tests.CodeFixtures.DogeOwner],
             references: refs
           } = doge_owner_module

    assert Enum.any?(refs, &match?(%ModuleReference{module_name: CleanMixer.Tests.CodeFixtures.DogeMacros}, &1))

    assert %ModuleReference{
             module_name: CleanMixer.Tests.CodeFixtures.Doge,
             ref_type: :runtime
           } in refs

    assert Enum.any?(refs, &match?(%ModuleReference{module_name: CleanMixer.Tests.CodeFixtures.Doge}, &1))

    assert %ModuleReference{
             module_name: :old_doge,
             ref_type: :runtime
           } in refs
  end

  test "works with erlang code" do
    assert %CodeMap{files: files} = ManifestCartographer.get_code_map()

    old_doge_module = Enum.find(files, &(&1.path =~ "old_doge.erl"))

    assert %SourceFile{
             path: "test/support/code_fixtures/old_doge.erl",
             modules: [:old_doge],
             references: refs
           } = old_doge_module

    assert %ModuleReference{
             module_name: CleanMixer.Tests.CodeFixtures.DogeOwner,
             ref_type: :unknown
           } in refs
  end

  @tag :pending
  describe "get_code_map_for/2" do
    @tag :pending
    test "it gets the same apps across versions" do
      ManifestCartographer.get_code_map_for_apps()
      |> inspect_into_file("manifest_cartographer_apps")
    end

    @tag :pending
    test "it gets the same manifests across versions" do
      ManifestCartographer.get_code_map_for_manifests()
      |> inspect_into_file("manifest_cartographer_manifests")
    end

    @tag :pending
    test "it gets the same merged xrefs across versions" do
      ManifestCartographer.get_code_map_for_merged_xrefs()
      |> inspect_into_file("manifest_cartographer_merged_xrefs")
    end

    @tag :pending
    test "the manifests are read the same across versions" do
      "/Users/c1/src/clean_mixer/_build/test/lib/clean_mixer/.mix/compile.elixir"
      |> ManifestCartographer.just_read_manifest()
      |> inspect_into_file("manifest_cartographer_just_read_manifest")
    end

    @tag :pending
    test "the parsed manifests are the same across versions" do
      "/Users/c1/src/clean_mixer/_build/test/lib/clean_mixer/.mix/compile.elixir"
      |> ManifestCartographer.just_read_manifest()
      |> Manifest.parse()
      |> inspect_into_file("manifest_parsed")
    end

    @tag :pending
    test "the manifest_modules are the same across versions" do
      "/Users/c1/src/clean_mixer/_build/test/lib/clean_mixer/.mix/compile.elixir"
      |> ManifestCartographer.just_read_manifest()
      |> Manifest.only_manifest_modules()
      |> inspect_into_file("manifest_modules")
    end

    @tag :pending
    test "the manifest source_params are the same across versions" do
      "/Users/c1/src/clean_mixer/_build/test/lib/clean_mixer/.mix/compile.elixir"
      |> ManifestCartographer.just_read_manifest()
      |> Manifest.only_parse()
      |> inspect_into_file("manifest_source_params")
    end
  end

  defp inspect_into_file(term, basename) when is_binary(basename) do
    basename
    |> elixir_version_specific_fixture_filename()
    |> File.write!(
      inspect(term, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98, binaries: :as_strings)
    )
  end

  defp elixir_version_specific_fixture_filename(basename) when is_binary(basename) do
    "test/support/fixtures/#{basename}_#{System.version()}.txt"
  end

  @tag :pending
  describe "arch_map depends on code_map" do
    @tag :pending
    test "returns code map with files of current project" do
      Logger.configure(level: :debug, truncate: :infinity)
      assert %CodeMap{files: files} = ManifestCartographer.get_code_map()

      files_inspected = inspect(files, limit: :infinity, printable_limit: :infinity, pretty: true, width: 98)
      # Logger.debug("files_inspected: #{files_inspected}")
      # for elixir 1.10
      #   %CleanMixer.CodeMap.SourceFile{
      #   modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
      #   path: "lib/clean_mixer/arch_map.ex",
      #   references: [
      #     %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.LexicalTracker, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: CleanMixer.Graph, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.CodeMap.SourceFile,
      #       ref_type: :runtime
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Dependency,
      #       ref_type: :runtime
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Component,
      #       ref_type: :runtime
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Component,
      #       ref_type: :struct
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
      #   ]
      # },

      # for elixir 1.13
      # %CleanMixer.CodeMap.SourceFile{
      #   modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
      #   path: "lib/clean_mixer/arch_map.ex",
      #   references: [
      #     %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.LexicalTracker, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Dependency,
      #       ref_type: :runtime
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Component,
      #       ref_type: :runtime
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{
      #       module_name: CleanMixer.ArchMap.Component,
      #       ref_type: :export
      #     },
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :export},
      #     %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :export}
      #   ]
      # },

      doge_owner_module = Enum.find(files, &(&1.path =~ "doge_owner.ex"))

      assert %SourceFile{
               path: "test/support/code_fixtures/doge_owner.ex",
               modules: [CleanMixer.Tests.CodeFixtures.DogeOwner],
               references: refs
             } = doge_owner_module

      assert Enum.any?(refs, &match?(%ModuleReference{module_name: CleanMixer.Tests.CodeFixtures.DogeMacros}, &1))

      assert %ModuleReference{
               module_name: CleanMixer.Tests.CodeFixtures.Doge,
               ref_type: :runtime
             } in refs

      assert Enum.any?(refs, &match?(%ModuleReference{module_name: CleanMixer.Tests.CodeFixtures.Doge}, &1))

      assert %ModuleReference{
               module_name: :old_doge,
               ref_type: :runtime
             } in refs
    end
  end
end
