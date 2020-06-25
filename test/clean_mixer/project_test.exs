defmodule CleanMixer.ProjectTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap
  alias CleanMixer.CodeMap.FileDependency
  alias CleanMixer.ArchConfig
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.Project
  alias CleanMixer.CodeCartographer

  defmodule BasicFakeCartographer do
    @behaviour CodeCartographer

    def get_code_map(_options) do
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
    component_map = [
      {"component1", "path1"},
      {"component2", "path2", tag: "value"}
    ]

    project =
      component_map
      |> ArchConfig.new()
      |> Project.new([], CodeCartographer.new(BasicFakeCartographer))

    assert Component.new(
             "component1",
             [SourceFile.new("path1/file1"), SourceFile.new("path1/file2")],
             [FileDependency.new(SourceFile.new("path1/file1"), SourceFile.new("path2/file1"), [:runtime])],
             %{tags: [], config_path: "path1"}
           ) in project.arch_map.components

    assert Component.new(
             "component2",
             [SourceFile.new("path2/file1")],
             [FileDependency.new(SourceFile.new("path2/file1"), SourceFile.new("path2/file2"), [:runtime])],
             %{tags: [tag: "value"], config_path: "path2"}
           ) in project.arch_map.components
  end

  defmodule NestedFakeCodeCartographer do
    @behaviour CodeCartographer

    def get_code_map(_options) do
      files = [
        SourceFile.new("path/file"),
        SourceFile.new("path/subpath/file")
      ]

      %CodeMap{files: files, dependencies: []}
    end
  end

  test "supports nested components" do
    component_map = [component: "path", subcomponent: "path/subpath"]

    project =
      component_map
      |> ArchConfig.new()
      |> Project.new([], CodeCartographer.new(NestedFakeCodeCartographer))

    assert Component.new(:component, [SourceFile.new("path/file"), SourceFile.new("path/subpath/file")], [], %{
             tags: [],
             config_path: "path"
           }) in project.arch_map.components

    assert Component.new(:subcomponent, [SourceFile.new("path/subpath/file")], [], %{
             tags: [],
             config_path: "path/subpath"
           }) in project.arch_map.components
  end

  defmodule HexDepsFakeCodeCartographer do
    @behaviour CodeCartographer

    def get_code_map(_options) do
      files = [
        component_file = SourceFile.new("component/file"),
        hex_comp1_file = SourceFile.new("hex_comp1/file"),
        hex_comp2_file = SourceFile.new("hex_comp2/file"),
        hex_comp3_file = SourceFile.new("hex_comp3/file")
      ]

      %CodeMap{
        files: files,
        dependencies: [
          FileDependency.new(component_file, hex_comp1_file),
          FileDependency.new(component_file, hex_comp2_file),
          FileDependency.new(hex_comp2_file, hex_comp3_file)
        ]
      }
    end
  end

  test "it filters hex components that do not connect to configured components" do
    component_map = [
      {"component", "component"},
      {"hex_comp1", "hex_comp1", [hex_pack: true]},
      {"hex_comp2", "hex_comp2", [hex_pack: true]},
      {"hex_comp3", "hex_comp3", [hex_pack: true]}
    ]

    project =
      component_map
      |> ArchConfig.new()
      |> Project.new([], CodeCartographer.new(HexDepsFakeCodeCartographer))

    component =
      Component.new(
        "component",
        [SourceFile.new("component/file")],
        [
          FileDependency.new(SourceFile.new("component/file"), SourceFile.new("hex_comp1/file")),
          FileDependency.new(SourceFile.new("component/file"), SourceFile.new("hex_comp2/file"))
        ],
        %{tags: [], config_path: "component"}
      )

    hex_comp1 =
      Component.new(
        "hex_comp1",
        [SourceFile.new("hex_comp1/file")],
        [],
        %{tags: [hex_pack: true], config_path: "hex_comp1"}
      )

    hex_comp2 =
      Component.new(
        "hex_comp2",
        [SourceFile.new("hex_comp2/file")],
        [
          FileDependency.new(SourceFile.new("hex_comp2/file"), SourceFile.new("hex_comp3/file"))
        ],
        %{tags: [hex_pack: true], config_path: "hex_comp2"}
      )

    assert project.arch_map.components == [component, hex_comp1, hex_comp2]

    refute Enum.map(project.arch_map.dependencies, &{&1.source, &1.target}) ==
             [{component, hex_comp1}, {component, hex_comp2}]
  end
end
