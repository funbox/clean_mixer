defmodule CleanMixer.Graph.PathCycleTest do
  use ExUnit.Case

  alias CleanMixer.Graph.PathCycle

  describe "#cycle_depth/1" do
    test "returns deepest path level ignoring common prefix" do
      assert PathCycle.depth(["1.ex", "2.ex"]) == :infinity
      assert PathCycle.depth(["1.ex", "prefix/2.ex", "prefix/3.ex"]) == :infinity
      assert PathCycle.depth(["prefix/2.ex", "other-prefix/3.ex"]) == :infinity

      assert PathCycle.depth(["prefix/1.ex", "prefix/2.ex"]) == 0
      assert PathCycle.depth(["prefix/1.ex", "prefix/subfolder/2.ex"]) == 1

      assert PathCycle.depth(["prefix/submodule.ex", "prefix/submodule/1.ex"]) == 1
      assert PathCycle.depth(["prefix/submodule.ex", "prefix/sub/submodule/1.ex"]) == 2
    end
  end
end
