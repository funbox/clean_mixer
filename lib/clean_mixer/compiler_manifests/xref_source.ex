defmodule CleanMixer.CompilerManifests.XrefSource do
  alias CleanMixer.CompilerManifests.App
  alias CleanMixer.CodeMap.SourceFile
  alias CleanMixer.CodeMap.ModuleReference

  alias :xref, as: Xref

  @spec get(list(App.t())) :: list(SourceFile.t())
  def get(apps) do
    xref = init_xref(apps)

    {:ok, function_calls} = Xref.q(xref, 'XC')

    function_calls
    |> Enum.map(&to_file_dependency/1)
    |> Enum.reject(&is_nil/1)
    |> Enum.group_by(fn {path, _deps} -> path end, fn {_path, deps} -> deps end)
    |> Enum.map(&to_source_file/1)
  end

  defp init_xref(apps) do
    {:ok, xref} = Xref.start([])
    Xref.set_default(xref, verbose: false, warnings: false)

    for app <- apps do
      {:ok, _} = Xref.add_application(xref, to_charlist(app.build_path))
    end

    xref
  end

  defp to_file_dependency({{:"$M_EXPR", _, _}, {_target_module, _, _}}), do: nil
  defp to_file_dependency({{_source_module, _, _}, {:"$M_EXPR", _, _}}), do: nil

  defp to_file_dependency({{source_module, _, _}, {target_module, _, _}}) do
    source_file = module_file_path(source_module)

    if source_file do
      {source_file, {source_module, target_module}}
    else
      nil
    end
  end

  def to_source_file({path, deps}) do
    modules = Keyword.keys(deps) |> Enum.uniq()
    references = Enum.map(deps, &to_reference/1)

    SourceFile.new(path, modules, references)
  end

  def to_reference({_source_module, target_module}) do
    ModuleReference.new(target_module)
  end

  defp module_file_path(module_name) do
    case Code.ensure_loaded(module_name) do
      {:module, _} ->
        module_name.module_info(:compile)
        |> Keyword.get(:source)
        |> to_string()
        |> to_relative_path()

      {:error, _} ->
        nil
    end
  end

  defp to_relative_path(path) do
    path
    |> String.replace_prefix(File.cwd!(), "")
    |> String.trim("/")
  end
end
