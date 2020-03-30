[![Build Status](https://travis-ci.com/miros/clean_mixer.svg?branch=master)](https://travis-ci.com/miros/clean_mixer)
[![Coverage Status](https://coveralls.io/repos/github/miros/clean_mixer/badge.svg?branch=master)](https://coveralls.io/github/miros/clean_mixer?branch=master)

<a href="https://funbox.ru">
  <img src="http://funbox.ru/badges/sponsored_by_funbox_compact.svg" alt="Sponsored by FunBox" width=250 />
</a>

# Clean Mixer

Tools for code architecture analysis and validation.
Heavily inspired by Bob Martin's Clean Architecture and to some extent ArchUnit library.

## Usage

Add clean_mixer to your list of dependencies in mix.exs:

```elixir
def deps do
  [{:clean_mixer, "~> 0.1", only: [:dev, :test], runtime: false}
end
```p

Configure components of your codebase in `.clean_mixer.exs`

```
[
  components: [
    {"some-component", "lib/clean_mixer/path-to-files-of-some-component"},
    {"some-component/sub-component", "lib/clean_mixer/path-to-files-of-some-component/sub-component"},
    {"some-umbrella-app-component", "apps/some-app/lib/some-app/path-to-files-of-some-component"}
  ]
]
```

Each component is just an arbitrary folder with code and name. You can model components as umbrella apps or just subfolders of lib directory.

Note that components can be nested in each other, although architecturally it is not recommended and in some cases might yield confusing results.

## Visualization and analysis

```
cd clean_mixer
mix clean_mixer.plantuml -v
```

![clean_mixer.png](https://raw.githubusercontent.com/miros/clean_mixer/master/clean_mixer_example.png)

**Render component dependencies in plantuml:**

```
mix clean_mixer.plantuml

mix clean_mixer.plantuml --help

# you can hide some components from diagramm
mix clean_mixer.plantuml --except="some-component,other-component"

# render metrics of links beween components
mix clean_mixer.plantuml -v
```

**Metrics provided:**

For in depth description of metrics (in, out, I, A, D) and principles please refer to Bob Martin's Clean Architecture book (Chapter 14).

* in = number of incoming dependencies on current component files
* out = number of outgoing dependencies on other components files
* I = instability = out / (in + out)
* A = files_with_behaviours / total_files
* D = Distance = |A + I - 1| (Distance from the Main Sequence)
* Pf = public files = files of current component used by others
* Ain = Abstract in = number of incoming dependencies on current component behaviours
* Aout = Abstract in = number of dependencies on other components behaviours
* U = Usage = percent of current component files that are public (used by others)

Component links are coloured red on a diagramm if the Stable Dependencies Principle (Depend in the direction of stability) is violated.

**List all project components and their dependencies:**

```
mix clean_mixer.list

mix clean_mixer.list --help

# you can filter list by source and target components
mix clean_mixer.list --sources="some/component" --targets="other/component"

# you can use wildcard
mix clean_mixer.list --sources="*some-pattern*"

# you can filter by several components
mix clean_mixer.list --sources="some-component,other-component"

# you can filter list by source and target dependencies between files
mix clean_mixer.list --file-sources="*/file1.ex" --file-targets="*/file2.ex"
```

**List all project component usages:**

```
# show components public files
mix clean_mixer.list_usages

# show components public files and who uses them
mix clean_mixer.list_usages -v
```

**List cycles in component dependencies:**

```
mix clean_mixer.cycles
```

## Validation

You can use clean_mixer internal api to make some basic assertions about projects architecture:

```elixir
ExUnit.start(capture_log: true, trace: true)

defmodule ArchTest do
  use ExUnit.Case

  alias CleanMixer.Workspace

  setup_all do
    workspace = Workspace.new()
    %{ws: workspace}
  end

  test "there are shall be no cyclical dependencies between components", %{ws: ws} do
    assert Workspace.component_cycles(ws) == []
  end

  @adapters [
    "http-api",
    "kafka-downstream"
  ]

  for adapter <- @adapters do
    test "domain shall not depend on adapter #{adapter}", %{ws: ws} do
      refute Workspace.dependency?(ws, "app-domain", unquote(adapter))
    end
  end

  test "`utils` shall have no dependencies", %{ws: ws} do
    assert Workspace.dependencies_of(ws, "utils") == []
  end

end
```

Run tests:

```
mix run --no-start test/arch_test.exs
```
