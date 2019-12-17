defmodule CleanMixer.Tests.CodeFixtures.DogeMacros do
  defmacro good_boy do
    quote do
      :wow
    end
  end
end
