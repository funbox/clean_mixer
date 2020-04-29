defmodule CleanMixer.WorkspaceTest do
  use ExUnit.Case

  alias CleanMixer.Workspace
  alias CleanMixer.ArchMap
  alias CleanMixer.Project
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.FileDependency

  describe "component" do
    test "returns dependencies of given component" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2]
      }

      workspace = workspace_for(arch_map)

      assert workspace |> Workspace.component("comp1") == comp1
      assert workspace |> Workspace.component("comp2") == comp2
    end
  end

  describe "dependencies_of" do
    test "returns dependencies of given component" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2)
        ]
      }

      assert workspace_for(arch_map) |> Workspace.dependencies_of("comp1") == [Dependency.new(comp1, comp2)]
    end
  end

  describe "usages_of" do
    test "returns dependencies of given component" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2)
        ]
      }

      assert workspace_for(arch_map) |> Workspace.usages_of("comp2") == [Dependency.new(comp1, comp2)]
    end
  end

  describe "dependency?" do
    test "checks if component depend on given target" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2],
        dependencies: [
          Dependency.new(comp1, comp2)
        ]
      }

      workspace = workspace_for(arch_map)

      assert workspace |> Workspace.dependency?("comp1", "comp2")
      refute workspace |> Workspace.dependency?("comp2", "comp1")
    end
  end

  describe "file_cycles" do
    test "returns cycles in code map" do
      files = [
        SourceFile.new("file1"),
        SourceFile.new("file2")
      ]

      dependencies = [
        FileDependency.new(SourceFile.new("file1"), SourceFile.new("file2")),
        FileDependency.new(SourceFile.new("file2"), SourceFile.new("file1"))
      ]

      code_map = %CodeMap{files: files, dependencies: dependencies}

      cycles =
        code_map
        |> workspace_for()
        |> Workspace.file_cycles()

      assert [SourceFile.new("file1"), SourceFile.new("file2"), SourceFile.new("file1")] in cycles
    end
  end

  def workspace_for(%ArchMap{} = arch_map) do
    Workspace.new(%Project{arch_map: arch_map})
  end

  def workspace_for(%CodeMap{} = code_map) do
    Workspace.new(%Project{code_map: code_map})
  end
end
