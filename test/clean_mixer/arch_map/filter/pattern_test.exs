defmodule CleanMixer.ArchMap.Filter.PatternTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap.Filter.Pattern

  test "it matches exact patters" do
    assert Pattern.new("exact-string") |> Pattern.match_str?("exact-string")
    refute Pattern.new("exact-string") |> Pattern.match_str?("other-string")
  end

  test "it matches patterns with globs" do
    assert Pattern.new("namespace/*") |> Pattern.match_str?("namespace/some-component")
    refute Pattern.new("namespace/*") |> Pattern.match_str?("other-namespace/some-component")

    assert Pattern.new("namespace/*/some-component") |> Pattern.match_str?("namespace/sub-ns/some-component")
    refute Pattern.new("namespace/*/some-component") |> Pattern.match_str?("namespace/sub-ns/other-component")
  end

  test "globs match line start and end" do
    assert Pattern.new("pattern*") |> Pattern.match_str?("pattern")
    refute Pattern.new("pattern*") |> Pattern.match_str?("other")

    assert Pattern.new("*pattern") |> Pattern.match_str?("pattern")
    refute Pattern.new("*pattern") |> Pattern.match_str?("other")
  end
end
