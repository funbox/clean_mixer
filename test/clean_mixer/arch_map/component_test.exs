defmodule CleanMixer.ArchMap.ComponentTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency

  describe "file_dependencies/2" do
    test "returns file dependencies between components" do
      comp1 =
        Component.new("comp1", [], [
          FileDependency.new(SourceFile.new("some_file"), SourceFile.new("dep_file"), [:runtime]),
          FileDependency.new(SourceFile.new("some_file"), SourceFile.new("some_other_file"), [:runtime])
        ])

      comp2 = Component.new("comp2", [SourceFile.new("dep_file")])

      assert [FileDependency.new(SourceFile.new("some_file"), SourceFile.new("dep_file"), [:runtime])] ==
               Component.file_dependencies(comp1, comp2)
    end
  end

  describe "child?/2" do
    test "return true if component is a child of given" do
      assert Component.child?(Component.new("parent/comp", []), Component.new("parent", []))
      refute Component.child?(Component.new("comp", []), Component.new("parent", []))
      refute Component.child?(Component.new("other_parent/comp", []), Component.new("parent", []))
    end
  end

  describe "depth/1" do
    test "returns subcomponent depth" do
      assert Component.new("comp") |> Component.depth() == 0
      assert Component.new("parent/comp") |> Component.depth() == 1
      assert Component.new("/parent/comp") |> Component.depth() == 1
      assert Component.new("super_parent/parent/comp") |> Component.depth() == 2
    end
  end
end
