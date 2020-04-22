defmodule CleanMixer.CodeMap.CodeModuleTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.CodeModule

  describe "behaviour?" do
    test "checks if module defines a behaviour" do
      assert CodeModule.behaviour?(CleanMixer.CodeCartographer)
      refute CodeModule.behaviour?(__MODULE__)
    end
  end

  defmodule SomeStruct do
    defstruct []
  end

  describe "struct?" do
    test "checks if module defines a struct" do
      assert CodeModule.struct?(SomeStruct)
      refute CodeModule.struct?(__MODULE__)
    end
  end

  defmodule ModuleWithFunctions do
    def test_fun() do
      :ok
    end

    defmacro test_macro() do
      :ok
    end
  end

  defmodule ModuleWithNoFunctions do
    @type t :: term
  end

  describe "has_functions?" do
    test "checks if module has no public funcitons" do
      assert CodeModule.has_functions?(ModuleWithFunctions)
      refute CodeModule.has_functions?(ModuleWithNoFunctions)
    end
  end
end
