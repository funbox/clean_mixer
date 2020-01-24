defmodule Mix.Tasks.CleanMixer.UI.ArchMapRendering.PlantUML do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Dependency

  @spec render(ArchMap.t()) :: String.t()
  def render(%ArchMap{} = arch_map) do
    [
      "@startuml",
      Enum.map(arch_map.dependencies, &format_dependency/1),
      "@enduml"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp format_dependency(%Dependency{} = dep) do
    "[#{dep.source.name}] --> [#{dep.target.name}]"
  end
end
