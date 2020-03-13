defmodule CleanMixer.ArchMap.Filter.PatternTest do
  use ExUnit.Case

  alias CleanMixer.ArchMap.Filter.Pattern

  test "it matches exact patters" do
    assert Pattern.new("exact-string") |> Pattern.match?("exact-string")
    refute Pattern.new("exact-string") |> Pattern.match?("other-string")
  end

  test "it matches patterns with globs" do
    assert Pattern.new("namespace/*") |> Pattern.match?("namespace/some-component")
    refute Pattern.new("namespace/*") |> Pattern.match?("other-namespace/some-component")

    assert Pattern.new("namespace/*/some-component") |> Pattern.match?("namespace/sub-ns/some-component")
    refute Pattern.new("namespace/*/some-component") |> Pattern.match?("namespace/sub-ns/other-component")
  end
end
