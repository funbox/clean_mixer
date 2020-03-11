defmodule CleanMixer.CodeMap.CodeModuleTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.CodeModule

  describe "new" do
    test "checks if module defines a behaviour" do
      assert CodeModule.new(CleanMixer.CodeCartographer, "any-path").behaviour?
      refute CodeModule.new(__MODULE__, "any-path").behaviour?
    end
  end
end
