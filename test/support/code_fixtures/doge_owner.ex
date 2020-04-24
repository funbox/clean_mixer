defmodule CleanMixer.Tests.CodeFixtures.DogeOwner do
  # coveralls-ignore-start
  alias CleanMixer.Tests.CodeFixtures.Doge

  require CleanMixer.Tests.CodeFixtures.DogeMacros

  def pet_good_boy(%Doge{good_boy?: true}), do: :ok
  def pet_good_boy(%Doge{good_boy?: false}), do: {:error, :bad_boy}

  def pet_old_boy do
    :old_doge.say_hello()
  end

  def give_treat do
    :treat
  end

  # coveralls-ignore-stop
end
