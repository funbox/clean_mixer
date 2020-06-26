defmodule CleanMixer.UI.ArchMapFilter do
  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Filter

  @spec cli_options() :: list(Optimus.option_spec_item())
  def cli_options do
    [
      sources: [
        value_name: "SOURCES",
        short: "-s",
        long: "--sources",
        help: "filter by deps sources",
        parser: &array/1,
        default: [],
        required: false
      ],
      targets: [
        value_name: "TARGETS",
        short: "-t",
        long: "--targets",
        help: "filter by deps targets",
        parser: &array/1,
        default: [],
        required: false
      ],
      file_sources: [
        value_name: "FILE_SOURCES",
        long: "--file-sources",
        help: "filter by deps file sources",
        parser: &array/1,
        default: [],
        required: false
      ],
      file_targets: [
        value_name: "FILE_TARGETS",
        long: "--file-targets",
        help: "filter by deps file targets",
        parser: &array/1,
        default: [],
        required: false
      ]
    ]
  end

  @spec filter(ArchMap.t(), map) :: ArchMap.t()
  def filter(arch_map, params) do
    Enum.reduce(params, arch_map, &filter_by/2)
  end

  defp filter_by({:sources, [_ | _] = sources}, arch_map) do
    Filter.with_source_components(arch_map, sources)
  end

  defp filter_by({:targets, [_ | _] = targets}, arch_map) do
    Filter.with_target_components(arch_map, targets)
  end

  defp filter_by({:file_sources, [_ | _] = sources}, arch_map) do
    Filter.with_file_sources(arch_map, sources)
  end

  defp filter_by({:file_targets, [_ | _] = targets}, arch_map) do
    Filter.with_file_targets(arch_map, targets)
  end

  defp filter_by(_, arch_map) do
    arch_map
  end

  defp array(string) do
    {:ok, String.split(string, ",")}
  end
end
