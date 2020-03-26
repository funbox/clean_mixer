defmodule CleanMixer.CodeMap.FileDependencyTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference

  describe "modules" do
    test "returns modules of the dependency" do
      dep =
        FileDependency.new(
          SourceFile.new("file1", [], [
            ModuleReference.new(Module1),
            ModuleReference.new(Module2),
            ModuleReference.new(OtheModule)
          ]),
          SourceFile.new("file2", [Module1, Module2, Module3])
        )

      assert FileDependency.modules(dep) == [Module1, Module2]
    end
  end
end
