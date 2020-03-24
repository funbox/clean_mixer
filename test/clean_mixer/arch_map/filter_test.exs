defmodule CleanMixer.ArchMap.FilterTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap.Filter
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.CodeMap.SourceFile

  setup do
    comp1 = Component.new("comp1")
    comp2 = Component.new("comp2")
    comp3 = Component.new("comp3")

    arch_map =
      ArchMap.new(
        [comp1, comp2, comp3],
        [
          dep1 =
            Dependency.new(comp1, comp2, [
              FileDependency.new(SourceFile.new("comp1/file1"), SourceFile.new("comp2/file1")),
              FileDependency.new(SourceFile.new("comp1/file2"), SourceFile.new("comp2/file2"))
            ]),
          dep2 = Dependency.new(comp3, comp1)
        ]
      )

    [comp1: comp1, comp2: comp2, comp3: comp3, dep1: dep1, dep2: dep2, arch_map: arch_map]
  end

  describe "with_source_components" do
    test "filters arch map by sources of dependencies", context do
      assert Filter.with_source_components(context.arch_map, ["comp1"]) ==
               ArchMap.new([context.comp1, context.comp2], [context.dep1])
    end
  end

  describe "with_target_components" do
    test "filters arch map by targets of dependencies", context do
      assert Filter.with_target_components(context.arch_map, ["comp1"]) ==
               ArchMap.new([context.comp3, context.comp1], [context.dep2])
    end
  end

  describe "with_file_sources" do
    test "filters arch map by source files of dependencies", context do
      assert Filter.with_file_sources(context.arch_map, ["comp1/file1"]) ==
               ArchMap.new([context.comp1, context.comp2], [
                 Dependency.new(context.comp1, context.comp2, [
                   FileDependency.new(SourceFile.new("comp1/file1"), SourceFile.new("comp2/file1"))
                 ])
               ])
    end
  end

  describe "with_file_targets" do
    test "filters arch map by target files of dependencies", context do
      assert Filter.with_file_targets(context.arch_map, ["comp2/file2"]) ==
               ArchMap.new([context.comp1, context.comp2], [
                 Dependency.new(context.comp1, context.comp2, [
                   FileDependency.new(SourceFile.new("comp1/file2"), SourceFile.new("comp2/file2"))
                 ])
               ])
    end
  end
end
