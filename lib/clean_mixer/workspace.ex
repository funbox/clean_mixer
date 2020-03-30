defmodule CleanMixer.Workspace do
  use GenServer

  alias CleanMixer.ArchMap
  alias CleanMixer.ArchMap.Component
  alias CleanMixer.ArchMap.Dependency
  alias CleanMixer.ArchGraph

  @opaque t :: pid
  @type arch_map_action :: (ArchMap.t() -> any)

  @spec new(ArchMap.t()) :: t
  def new(arch_map \\ CleanMixer.arch_map()) do
    {:ok, pid} = GenServer.start_link(__MODULE__, [arch_map])
    pid
  end

  @spec component(t, Component.name()) :: Component.t() | nil
  def component(workspace, name) do
    comp =
      use_arch_map(workspace, fn arch_map ->
        ArchMap.component(arch_map, name)
      end)

    unless comp do
      raise "unknown component name:#{name}; check .clean_mixer.exs"
    end

    comp
  end

  @spec dependencies_of(t, Component.name()) :: list(Dependency.t())
  def dependencies_of(workspace, comp_name) do
    comp = component(workspace, comp_name)

    use_arch_map(workspace, fn arch_map ->
      ArchMap.dependencies_of(arch_map, comp)
    end)
  end

  @spec usages_of(t, Component.name()) :: list(Dependency.t())
  def usages_of(workspace, comp_name) do
    comp = component(workspace, comp_name)

    use_arch_map(workspace, fn arch_map ->
      ArchMap.usages_of(arch_map, comp)
    end)
  end

  @spec dependency?(t, Component.name(), Component.name()) :: boolean
  def dependency?(workspace, comp_name, target_comp_name) do
    target_comp = component(workspace, target_comp_name)

    deps = dependencies_of(workspace, comp_name) |> Enum.map(& &1.target)
    target_comp in deps
  end

  @spec component_cycles(t()) :: [ArchGraph.cycle()]
  def component_cycles(workspace) do
    use_arch_map(workspace, fn arch_map ->
      arch_map
      |> ArchGraph.build_from()
      |> ArchGraph.cycles()
    end)
  end

  @spec use_arch_map(t, arch_map_action) :: action_result :: any
  def use_arch_map(workspace, action_fun) do
    GenServer.call(workspace, {:use_arch_map, action_fun})
  end

  defmodule State do
    defstruct [:arch_map]

    @type t :: %__MODULE__{
            arch_map: ArchMap.t()
          }
  end

  @impl GenServer
  def init([arch_map]) do
    state = %State{
      arch_map: arch_map
    }

    {:ok, state}
  end

  @impl GenServer
  def handle_call({:use_arch_map, action}, _from, %State{arch_map: arch_map} = state) do
    result = action.(arch_map)
    {:reply, result, state}
  end
end
