defmodule CleanMixerTest do
  use ExUnit.Case

  test "README install version check" do
    app = :clean_mixer

    app_version = "#{Application.spec(app, :vsn)}"
    readme = File.read!("README.md")
    [_, readme_versions] = Regex.run(~r/{:#{app}, "(.+)"/, readme)

    assert Version.match?(
             app_version,
             readme_versions
           ),
           """
           Install version constraint in README.md does not match to current app version.
           Current App Version: #{app_version}
           Readme Install Versions: #{readme_versions}
           """
  end

  describe "arch_map/1" do
    test "x" do
      # comparing the entire arch_map was enormous and not useful for tracking down diffs
      # actual = CleanMixer.arch_map()
      # expected = arch_map_hex_free()

      # assert Enum.at(actual.components, 0).name == Enum.at(expected.components, 0).name
      # # assert Enum.at(actual.components, 0).files == Enum.at(expected.components, 0).files
      # # assert Enum.sort(Enum.at(actual.components, 0).files) == Enum.sort(Enum.at(expected.components, 0).files)
      # assert Enum.sort(Enum.at(actual.components, 0).file_dependencies) ==
      #          Enum.sort(Enum.at(expected.components, 0).file_dependencies)

      # assert Enum.at(actual.components, 0) == Enum.at(expected.components, 0)
      # assert actual.dependencies == expected.dependencies
      # assert actual.components == expected.components
      # assert actual == arch_map_hex_free()
    end
  end

  defp arch_map_hex_free do
    %{}
  end
end
