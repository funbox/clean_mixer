defmodule CleanMixer.CodeGraphTest do
  use ExUnit.Case

  alias CleanMixer.CodeGraph.SourceFile
  alias CleanMixer.CodeGraph
  alias CleanMixer.CodeGraph.ModuleReference
  alias CleanMixer.CodeGraph.FileDependency

  describe "&merge/1" do
    test "merges two code graphs together" do
      some_file = SourceFile.new("file1", [], [])
      other_file = SourceFile.new("file2", [], [])

      assert %CodeGraph{files: [some_file, other_file]} =
               CodeGraph.merge(CodeGraph.new([some_file]), CodeGraph.new([other_file]))
    end
  end

  describe "&dependencies/1" do
    test "returns dependencies between files in graph" do
      graph = %CodeGraph{
        files: [
          file1 =
            SourceFile.new("file1", [Module1], [
              ModuleReference.new(Module21, :runtime),
              ModuleReference.new(Module22, :runtime),
              ModuleReference.new(Module3, :runtime)
            ]),
          file2 =
            SourceFile.new("file2", [Module21, Module22], [
              ModuleReference.new(Module1, :runtime),
              ModuleReference.new(Module1, :struct)
            ]),
          file3 = SourceFile.new("file3", [Module3], [])
        ]
      }

      assert [
               FileDependency.new(file1, file2, [:runtime]),
               FileDependency.new(file1, file3, [:runtime]),
               FileDependency.new(file2, file1, [:runtime, :struct])
             ] ==
               CodeGraph.dependencies(graph)
    end
  end
end
