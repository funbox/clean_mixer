defmodule CleanMixer.GraphTest do
  use ExUnit.Case

  alias CleanMixer.Graph
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  describe "cycles" do
    test "it finds cycles in graph" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")
      comp3 = Component.new("comp3")

      arch_map = %ArchMap{
        components: [comp1, comp2, comp3],
        dependencies: [
          Dependency.new(comp1, comp2),
          Dependency.new(comp2, comp3),
          Dependency.new(comp3, comp1)
        ]
      }

      assert [[comp1, comp2, comp3, comp1], [comp2, comp3, comp1, comp2], [comp3, comp1, comp2, comp3]] ==
               arch_map |> ArchMap.graph() |> Graph.cycles() |> Enum.sort()
    end

    test "it returns empty list when graph has no cycles" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")
      comp3 = Component.new("comp3")

      arch_map = %ArchMap{
        components: [comp1, comp2, comp3],
        dependencies: [
          Dependency.new(comp1, comp2),
          Dependency.new(comp2, comp3)
        ]
      }

      assert [] == arch_map |> ArchMap.graph() |> Graph.cycles() |> Enum.sort()
    end
  end

  describe "uniq_cycles" do
    test "leaves only cycles of uniq component sets" do
      comp1 = Component.new("comp1")
      comp2 = Component.new("comp2")
      comp3 = Component.new("comp3")

      arch_map = %ArchMap{
        components: [comp1, comp2, comp3],
        dependencies: [
          Dependency.new(comp1, comp2),
          Dependency.new(comp2, comp3),
          Dependency.new(comp3, comp1)
        ]
      }

      assert arch_map |> ArchMap.graph() |> Graph.cycles() |> Graph.uniq_cycles() |> Enum.count() == 1
    end
  end
end
