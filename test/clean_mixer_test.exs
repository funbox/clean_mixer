defmodule CleanMixerTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

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

      assert CleanMixer.dependencies_of(comp1, arch_map) == [Dependency.new(comp1, comp2)]
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

      assert CleanMixer.dependency?(comp1, comp2, arch_map)
      refute CleanMixer.dependency?(comp2, comp1, arch_map)
    end
  end
end
