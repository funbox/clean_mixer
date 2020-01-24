defmodule CleanMixer.ArchMapTest do
  use ExUnit.Case
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency

  test "calculates dependencies between components" do
    components = [
      comp1 =
        Component.new("comp1", [SourceFile.new("comp1/file1"), SourceFile.new("comp1/file2")], [
          FileDependency.new(SourceFile.new("comp1/file1"), SourceFile.new("comp2/file1"), [:runtime]),
          FileDependency.new(SourceFile.new("comp1/file2"), SourceFile.new("comp3/file1"), [:runtime])
        ]),
      comp2 =
        Component.new("comp2", [SourceFile.new("comp2/file1")], [
          FileDependency.new(SourceFile.new("comp2/file1"), SourceFile.new("comp1/file1"), [:runtime])
        ]),
      comp3 = Component.new("comp3", [SourceFile.new("comp3/file1")], [])
    ]

    assert [
             Dependency.new(comp1, comp3, [
               FileDependency.new(SourceFile.new("comp1/file2"), SourceFile.new("comp3/file1"), [:runtime])
             ]),
             Dependency.new(comp1, comp2, [
               FileDependency.new(SourceFile.new("comp1/file1"), SourceFile.new("comp2/file1"), [:runtime])
             ]),
             Dependency.new(comp2, comp1, [
               FileDependency.new(SourceFile.new("comp2/file1"), SourceFile.new("comp1/file1"), [:runtime])
             ])
           ] ==
             ArchMap.new(components).dependencies
  end
end
