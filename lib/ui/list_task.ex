defmodule CleanMixer.UI.ListTask do
  alias CleanMixer.UI.ArchMapRendering.TextRenderer
  alias CleanMixer.UI.CLI
  alias CleanMixer.UI.ArchMapFilter

  require Logger

  def step1(args, extra_cli_desc \\ []) do
    Logger.configure(level: :debug, truncate: :infinity)

    Mix.Task.run("compile")
    params = parse_params(args, extra_cli_desc)
    # Logger.debug("#{__MODULE__} run/3 params #{inspect(params)}")

    step1 = CleanMixer.arch_map(include_hex: params[:include_hex])
    step1
    # step1_inspected = inspect(step1, pretty: true, width: 98, printable_limit: :infinity, limit: :infinity)

    # Logger.debug("#{__MODULE__} run/3 step1_inspected #{step1_inspected}")
  end

  @spec run(list(String.t()), TextRenderer.t()) :: :ok
  def run(args, renderer, extra_cli_desc \\ []) do
    Mix.Task.run("compile")

    params = parse_params(args, extra_cli_desc)

    CleanMixer.arch_map(include_hex: params[:include_hex])
    |> ArchMapFilter.filter(params)
    |> renderer.render(params)
    |> IO.puts()

    :ok
  end

  @spec debug_run(list(String.t()), TextRenderer.t()) :: :ok
  def debug_run(args, renderer, extra_cli_desc \\ []) do
    Logger.configure(level: :debug, truncate: :infinity)
    #   * `:truncate` - the maximum message size to be logged (in bytes).
    # Defaults to 8192 bytes. Note this configuration is approximate.
    # Truncated messages will have `" (truncated)"` at the end.
    # The atom `:infinity` can be passed to disable this behavior.

    # Logger.debug("#{__MODULE__} run/3 args #{inspect(args)}")
    # Logger.debug("#{__MODULE__} run/3 renderer #{inspect(renderer)}")
    # Logger.debug("#{__MODULE__} run/3 extra_cli_desc #{inspect(extra_cli_desc)}")

    Mix.Task.run("compile")
    # Logger.debug("#{__MODULE__} run/3 run_result #{inspect(run_result)}")

    params = parse_params(args, extra_cli_desc)
    # Logger.debug("#{__MODULE__} run/3 params #{inspect(params)}")

    step1 = CleanMixer.arch_map(include_hex: params[:include_hex])
    # step1_inspected = inspect(step1, pretty: true, width: 98, printable_limit: :infinity, limit: :infinity)

    # Logger.debug("#{__MODULE__} run/3 step1_inspected #{step1_inspected}")

    # mescape = Macro.escape(step1)

    # quoted =
    #   quote bind_quoted: [mescape: mescape] do
    #     mescape
    #   end

    # qts = Macro.to_string(quoted)

    # Logger.debug("#{__MODULE__} run/3 qts #{qts}")
    # fmt4 = Code.format_string!(qts)

    # Logger.debug("#{__MODULE__} run/3 fmt4 #{fmt4}")
    # Logger.debug("#{__MODULE__} run/3 quoted #{quoted}")
    # Logger.debug("#{__MODULE__} run/3 mescape #{mescape}")
    # mescaped_to_string = Macro.to_string(quote([], mescape))
    # Logger.debug("#{__MODULE__} run/3 mescaped_to_string #{mescaped_to_string}")
    # mts = Macro.to_string(quote(step1))
    # Macro.to_string(quote(do: foo.bar(1, 2, 3)))
    # Logger.debug("#{__MODULE__} run/3 mts #{mts}")
    # s = Kernel.to_string(step1)
    # Logger.debug("#{__MODULE__} run/3 s #{s}")
    # Logger.debug("#{__MODULE__} run/3 step1 #{inspect(step1, pretty: true, width: 80)}")

    # opts = struct(%Inspect.Opts{inspect_fun: &Inspect.inspect/2}, [])
    # # opts = Inspect.Opts.new([])
    # doc = Inspect.Algebra.group(Inspect.Algebra.to_doc(step1, opts))
    # Logger.debug("#{__MODULE__} run/3 doc #{inspect(doc)}")
    # fmt = IO.iodata_to_binary(Inspect.Algebra.format(doc, 98))
    # Logger.debug("#{__MODULE__} run/3 fmt #{inspect(fmt)}")
    # fmt2 = Code.format_string!(fmt)
    # Logger.debug("#{__MODULE__} run/3 fmt2 #{inspect(fmt2)}")
    # fmt3 = Code.format_string!(doc)
    # Logger.debug("#{__MODULE__} run/3 fmt3 #{inspect(fmt3)}")

    # @type t :: %__MODULE__{
    #         base: :decimal | :binary | :hex | :octal,
    #         binaries: :infer | :as_binaries | :as_strings,
    #         char_lists: :infer | :as_lists | :as_char_lists,
    #         charlists: :infer | :as_lists | :as_charlists,
    #         custom_options: keyword,
    #         inspect_fun: (any, t -> Inspect.Algebra.t()),
    #         limit: non_neg_integer | :infinity,
    #         pretty: boolean,
    #         printable_limit: non_neg_integer | :infinity,
    #         safe: boolean,
    #         structs: boolean,
    #         syntax_colors: [{color_key, IO.ANSI.ansidata()}],
    #         width: non_neg_integer | :infinity
    #       }

    # Logger.debug("#{__MODULE__} run/3 step1 #{IO.iodata_to_binary(Code.format_string!(inspect(step1)))}")
    # Logger.debug(
    #   "#{__MODULE__} run/3 step1 #{inspect(step1, printable_limit: :infinity, limit: :infinity, pretty: true, width: 98)}"
    # )

    # Code.format_string!
    # Logger.debug("#{__MODULE__} run/3 step1 keys #{inspect(Map.keys(step1))}")
    # Logger.debug("#{__MODULE__} run/3 step1 components #{inspect(Map.get(step1, :components, limit: :infinity))}")
    # Logger.debug("#{__MODULE__} run/3 step1 dependencies #{inspect(Map.get(step1, :dependencies, limit: :infinity))}")
    # Logger.debug("#{__MODULE__} run/3 step1 length of components #{Enum.count(Map.get(step1, :components))}")
    # Logger.debug("#{__MODULE__} run/3 step1 length of dependencies #{Enum.count(Map.get(step1, :dependencies))}")

    # step1
    # |> Map.get(:dependencies)
    # |> Enum.each(fn x -> Logger.debug("#{__MODULE__} run/3 step1.dependencies.each #{inspect(x)}") end)

    step2 =
      step1
      |> step2(params)

    # step2 =
    #   step1
    #   |> ArchMapFilter.filter(params)

    # step2_inspected = inspect(step2, pretty: true, width: 98, printable_limit: :infinity, limit: :infinity)
    # Logger.debug("#{__MODULE__} run/3 step2_inspected #{step2_inspected}")
    # Logger.debug("#{__MODULE__} run/3 step2 #{inspect(step2)}")
    # Logger.debug("#{__MODULE__} run/3 step2 keys #{inspect(Map.keys(step2))}")

    step3 =
      step2
      |> renderer.render(params)

    # Logger.debug("#{__MODULE__} run/3 step3 #{inspect(step3)}")

    step3
    |> IO.puts()

    :ok
  end

  def step2(step1, args, extra_cli_desc \\ []) do
    params = parse_params(args, extra_cli_desc)

    step2 =
      step1
      |> ArchMapFilter.filter(params)

    # step2_inspected = inspect(step2, pretty: true, width: 98, printable_limit: :infinity, limit: :infinity)
    # Logger.debug("#{__MODULE__} run/3 step2_inspected #{step2_inspected}")

    step2
  end

  defp parse_params(args, extra_cli_desc) do
    CLI.parse_params(args, cli_description(extra_cli_desc))
  end

  defp cli_description(extra_cli_desc) do
    [
      name: extra_cli_desc[:name],
      description: extra_cli_desc[:description],
      parse_double_dash: true,
      options: ArchMapFilter.cli_options() ++ Keyword.get(extra_cli_desc, :options, []),
      flags:
        [
          include_hex: [
            value_name: "INCLUDE_HEX",
            long: "--include-hex",
            help: "include hex dependencies"
          ]
        ] ++ Keyword.get(extra_cli_desc, :flags, [])
    ]
  end
end
