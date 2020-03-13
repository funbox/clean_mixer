defmodule CleanMixer.ArchMap.FilterTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap.Filter
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency

  setup do
    comp1 = Component.new("comp1")
    comp2 = Component.new("comp2")
    comp3 = Component.new("comp3")

    arch_map =
      ArchMap.new(
        [comp1, comp2, comp3],
        [Dependency.new(comp1, comp2), Dependency.new(comp3, comp1)]
      )

    [comp1: comp1, comp2: comp2, comp3: comp3, arch_map: arch_map]
  end

  describe "with_sources" do
    test "filters arch map by sources of dependencies", context do
      assert Filter.with_sources(context.arch_map, ["comp1"]) ==
               ArchMap.new([context.comp1, context.comp2], [Dependency.new(context.comp1, context.comp2)])
    end
  end

  describe "with_targets" do
    test "filters arch map by targets of dependencies", context do
      assert Filter.with_targets(context.arch_map, ["comp1"]) ==
               ArchMap.new([context.comp3, context.comp1], [Dependency.new(context.comp3, context.comp1)])
    end
  end
end
