defmodule Mix.Tasks.CleanMixer.Behaviours do
  use Mix.Task

  alias CleanMixer.UI.CLI
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.CodeMap.Behaviour
  alias CleanMixer.ArchMap.Filter.Pattern

  @shortdoc "Lists all baheviours and their implementations"

  @impl Mix.Task
  def run(args, _options \\ []) do
    Mix.Task.run("compile")

    params = CLI.parse_params(args, cli_description())
    arch_map = CleanMixer.arch_map()

    arch_map.components
    |> map_behaviours()
    |> filter(params)
    |> render()
    |> IO.puts()
  end

  defp cli_description() do
    [
      name: "clean_mixer.behaviours",
      description: @shortdoc,
      parse_double_dash: true,
      options: [
        component: [
          value_name: "COMPONENT",
          long: "--component",
          short: "-c",
          help: "filters by component",
          required: false
        ],
        behaviour: [
          value_name: "BEHAVIOUR",
          long: "--behaviour",
          short: "-b",
          help: "filters by behaviour",
          required: false
        ]
      ]
    ]
  end

  defp map_behaviours(components) do
    components
    |> Enum.map(&{&1.name, Component.modules(&1) |> Behaviour.all_implementations()})
    |> Enum.reject(fn {_, behaviours} -> behaviours == %{} end)
  end

  defp filter(components, params) do
    components
    |> filter_components(params[:component])
    |> filter_behaviours(params[:behaviour])
  end

  defp filter_components(components, _filter = nil) do
    components
  end

  defp filter_components(components, filter) do
    pattern = Pattern.new(filter)
    Enum.filter(components, fn {component_name, _} -> Pattern.match_str?(pattern, component_name) end)
  end

  defp filter_behaviours(components, _filter = nil) do
    components
  end

  defp filter_behaviours(components, filter) do
    pattern = Pattern.new(filter)

    Enum.map(components, fn {component, behaviours} ->
      new_behaviours =
        behaviours
        |> Enum.filter(fn {behaviour, _} -> Pattern.match_str?(pattern, format_module(behaviour)) end)
        |> Enum.into(%{})

      {component, new_behaviours}
    end)
  end

  defp render(components) do
    behaviours =
      components
      |> Enum.into(%{})
      |> Map.values()

    case behaviours do
      [] ->
        ""

      _else ->
        behaviours
        |> Enum.reduce(&Map.merge/2)
        |> Enum.map_join("\n\n", &render_behaviour/1)
    end
  end

  defp render_behaviour({behaviour, impls}) do
    [
      "===> #{format_module(behaviour)}",
      "\n",
      Enum.map_join(impls, "\n", &" |---> #{format_module(&1)}")
    ]
  end

  defp format_module(name) do
    name |> to_string() |> String.replace_prefix("Elixir.", "")
  end
end
