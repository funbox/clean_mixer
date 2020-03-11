defmodule CleanMixer.CodeMap.CodeModuleTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.CodeModule

  describe "behaviour?" do
    test "checks if module defines a behaviour" do
      assert CodeModule.behaviour?(CleanMixer.CodeCartographer)
      refute CodeModule.behaviour?(__MODULE__)
    end
  end
end
