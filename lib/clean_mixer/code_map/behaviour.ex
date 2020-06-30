defmodule CleanMixer.CodeMap.Behaviour do
  alias CleanMixer.CodeMap.CodeModule

  @type implementations_map :: %{optional(behaviour_name :: CodeModule.name()) => list(impl :: CodeModule.name())}

  @spec all_implementations(list(CodeModule.name())) :: implementations_map()
  def all_implementations(modules) do
    modules
    |> Enum.flat_map(&implemented_behaviours/1)
    |> Enum.reduce(%{}, fn {behaviour, impl}, acc ->
      Map.update(acc, behaviour, [impl], fn list -> list ++ [impl] end)
    end)
  end

  defp implemented_behaviours(module_name) do
    module_name |> CodeModule.implemented_behaviours() |> Enum.map(&{&1, module_name})
  end
end
