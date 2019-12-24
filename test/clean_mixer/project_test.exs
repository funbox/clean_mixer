defmodule CleanMixer.ProjectTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.ArchConfig
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.Project
  alias CleanMixer.CodeCartographer

  defmodule FakeCartographer do
    @behaviour CodeCartographer

    def get_code_map() do
      files = [
        SourceFile.new("path1/file1"),
        SourceFile.new("path1/file2"),
        SourceFile.new("path2/file1")
      ]

      dependencies = [
        FileDependency.new(SourceFile.new("path1/file1"), SourceFile.new("path2/file1"), [:runtime]),
        FileDependency.new(SourceFile.new("path2/file1"), SourceFile.new("path2/file2"), [:runtime])
      ]

      %CodeMap{files: files, dependencies: dependencies}
    end
  end

  test "build arch map from code map" do
    component_map = %{"component1" => "path1", "component2" => "path2"}

    project =
      component_map
      |> ArchConfig.new()
      |> Project.new(CodeCartographer.new(FakeCartographer))

    assert [
             Component.new(
               "component1",
               [SourceFile.new("path1/file1"), SourceFile.new("path1/file2")],
               [FileDependency.new(SourceFile.new("path1/file1"), SourceFile.new("path2/file1"), [:runtime])]
             ),
             Component.new(
               "component2",
               [SourceFile.new("path2/file1")],
               [FileDependency.new(SourceFile.new("path2/file1"), SourceFile.new("path2/file2"), [:runtime])]
             )
           ] == project.arch_map.components
  end
end
