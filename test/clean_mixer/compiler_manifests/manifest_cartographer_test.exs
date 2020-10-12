defmodule CleanMixer.CompilerManifests.ManifestCartographerTest do
  use ExUnit.Case

  alias CleanMixer.CompilerManifests.ManifestCartographer
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference

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
end
