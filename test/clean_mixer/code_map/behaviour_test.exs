defmodule CleanMixer.CodeMap.BehaviourTest do
  use ExUnit.Case

  alias CleanMixer.CodeMap.Behaviour

  alias CleanMixer.CodeCartographer
  alias CleanMixer.CompilerManifests.ManifestCartographer

  describe "all_implementations" do
    test "returns all implementations by behaviour" do
      assert Behaviour.all_implementations([__MODULE__, ManifestCartographer]) == %{
               CodeCartographer => [ManifestCartographer]
             }
    end
  end
end
