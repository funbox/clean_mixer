defmodule CleanMixer.WorkspaceTest do
  use ExUnit.Case

  alias CleanMixer.Workspace
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  describe "component" do
    test "returns dependencies of given component" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")

      arch_map = %ArchMap{
        components: [comp1, comp2]
      }

      assert Workspace.new(arch_map) |> Workspace.component("comp1") == comp1
      assert Workspace.new(arch_map) |> Workspace.component("comp2") == comp2
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

      assert Workspace.new(arch_map) |> Workspace.dependencies_of("comp1") == [Dependency.new(comp1, comp2)]
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

      assert Workspace.new(arch_map) |> Workspace.usages_of("comp2") == [Dependency.new(comp1, comp2)]
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

      assert Workspace.new(arch_map) |> Workspace.dependency?("comp1", "comp2")
      refute Workspace.new(arch_map) |> Workspace.dependency?("comp2", "comp1")
    end
  end
end
