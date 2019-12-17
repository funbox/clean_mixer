defmodule CleanMixer.Tests.CodeFixtures.DogeOwner do
  alias CleanMixer.Tests.CodeFixtures.Doge

  require CleanMixer.Tests.CodeFixtures.DogeMacros

  def pet_good_boy(%Doge{good_boy?: true}), do: :ok
  def pet_good_boy(%Doge{good_boy?: false}), do: {:error, :bad_boy}
end
