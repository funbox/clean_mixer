defmodule CleanMixer.CompilerManifests.CodeGraphSourceTest do
  use ExUnit.Case

  alias CleanMixer.CompilerManifests.CodeGraphSource
  alias CleanMixer.CodeGraph
  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph.ModuleReference

  test "returns code graph with files of current project" do
    assert %CodeGraph{files: files} = CodeGraphSource.get_code_graph()

    doge_owner_module = Enum.find(files, &(&1.path =~ "doge_owner.ex"))

    assert %SourceFile{
             path: "test/support/code_fixtures/doge_owner.ex",
             modules: [CleanMixer.Tests.CodeFixtures.DogeOwner],
             references: refs
           } = doge_owner_module

    assert %ModuleReference{
             module_name: CleanMixer.Tests.CodeFixtures.DogeMacros,
             ref_type: :compile
           } in refs

    assert %ModuleReference{
             module_name: CleanMixer.Tests.CodeFixtures.Doge,
             ref_type: :runtime
           } in refs

    assert %ModuleReference{
             module_name: CleanMixer.Tests.CodeFixtures.Doge,
             ref_type: :struct
           } in refs
  end
end
