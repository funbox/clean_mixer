defmodule CleanMixer.CodeMap.SourceFileTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.SourceFile

  describe "&prepend_path/2" do
    test "perepends new parent to source file path" do
      source_file = SourceFile.new("some/path/file.ex", [], [])

      assert %SourceFile{path: "new/parent/path/some/path/file.ex"} ==
               SourceFile.prepend_path(source_file, "new/parent/path")
    end
  end
end
