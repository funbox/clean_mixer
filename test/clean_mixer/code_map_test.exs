defmodule CleanMixer.CodeMapTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.ModuleReference
  alias CleanMixer.CodeMap.FileDependency

  test "calculates dependencies between files in code map" do
    files = [
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

    assert [
             FileDependency.new(file1, file2, [:runtime]),
             FileDependency.new(file1, file3, [:runtime]),
             FileDependency.new(file2, file1, [:runtime, :struct])
           ] == CodeMap.new(files).dependencies
  end
end
