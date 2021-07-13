# Clean Mixer

[![Build Status](https://travis-ci.org/funbox/clean_mixer.svg?branch=master)](https://travis-ci.org/funbox/clean_mixer)
[![Coverage Status](https://coveralls.io/repos/github/funbox/clean_mixer/badge.svg?branch=master)](https://coveralls.io/github/funbox/clean_mixer?branch=master)
[![Module Version](https://img.shields.io/hexpm/v/clean_mixer.svg)](https://hex.pm/packages/clean_mixer)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/clean_mixer/)
[![Total Download](https://img.shields.io/hexpm/dt/clean_mixer.svg)](https://hex.pm/packages/clean_mixer)
[![License](https://img.shields.io/hexpm/l/clean_mixer.svg)](https://github.com/funbox/clean_mixer/blob/master/LICENSE)
[![Last Updated](https://img.shields.io/github/last-commit/funbox/clean_mixer.svg)](https://github.com/funbox/clean_mixer/commits/master)

Tools for code architecture analysis and validation.
Heavily inspired by Bob Martin's “Clean Architecture” and to some extent ArchUnit library.

## Usage

Add `:clean_mixer` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:clean_mixer, "~> 0.2", only: [:dev, :test], runtime: false}
  ]
end
```

To generate [PlantUML](https://plantuml.com/) diagrams you need to have [Graphviz](https://graphviz.gitlab.io/) and JRE installed.

Configure components of your codebase in `.clean_mixer.exs`

```elixir
[
  components: [
    {"some-component", "lib/clean_mixer/path-to-files-of-some-component"},
    {"some-component/sub-component", "lib/clean_mixer/path-to-files-of-some-component/sub-component"},
    {"some-umbrella-app-component", "apps/some-app/lib/some-app/path-to-files-of-some-component"},
    {"some-grouped-component", "lib/clean_mixer/path-to-files-of-some-grouped-component", group:
  "core_domain"},
  ]
]
```

Each component is just an arbitrary folder with code and name. You can model components as umbrella apps or just subfolders of lib directory.

Note that components can be nested in each other, although architecturally it is not recommended and in some cases might yield confusing results.

Components can have optional arbitrary tags. But the only currently used tag is `:group` which is used to optionally group components in PlantUML diagram.

## Visualization and analysis

```
cd clean_mixer
mix clean_mixer.plantuml -v
```

<p align="center">
  <img width="578" height="704" src="https://raw.githubusercontent.com/miros/clean_mixer/master/clean_mixer_example.png">
</p>

**Render component dependencies in PlantUML:**

```
mix clean_mixer.plantuml
```

```
mix clean_mixer.plantuml --help
```

You can hide some components from diagram:
```
mix clean_mixer.plantuml --except="some-component,other-component"
```

Also render Hex dependencies of your components:
```
mix clean_mixer.plantuml --include-hex
```

Render metrics of links between components:
```
mix clean_mixer.plantuml -v
```

You can group components by `:group` tag:
```
mix clean_mixer.plantuml --group
```

You can filter list by source and target components:
```
mix clean_mixer.plantuml --sources="some/component" --targets="other/component"
```

You can use wildcard:
```
mix clean_mixer.plantuml --sources="*some-pattern*"
```

You can filter by several components:
```
mix clean_mixer.plantuml --sources="some-component,other-component"
```

**Metrics provided:**

For in depth description of metrics (in, out, I, A, D) and principles please refer to Bob Martin's “Clean Architecture” book (Chapter 14).

* in = number of incoming dependencies on current component files
* out = number of outgoing dependencies on other components files
* I = instability = out / (in + out)
* A = files_with_behaviours / total_files
* D = Distance = |A + I - 1| (Distance from the Main Sequence)
* Tf = total files = total number of files of current component
* Pf = public files = number of files of current component used by others
* Ain = Abstract in = number of incoming dependencies on current component behaviours
* Aout = Abstract in = number of dependencies on other components behaviours
* U = Usage = percent of current component files that are public (used by others)

Component links are coloured red on a diagram if the Stable Dependencies Principle (Depend in the direction of stability) is violated.

**List all project components and their dependencies:**

```
mix clean_mixer.list
```

```
mix clean_mixer.list --help
```

You can include hex dependencies of your components:
```
mix clean_mixer.list --include-hex
```

You can filter list by source and target components:
```
mix clean_mixer.list --sources="some/component" --targets="other/component"
```

You can use wildcard:
```
mix clean_mixer.list --sources="*some-pattern*"
```

You can filter by several components:
```
mix clean_mixer.list --sources="some-component,other-component"
```

You can filter list by source and target dependencies between files:
```
mix clean_mixer.list --file-sources="*/file1.ex" --file-targets="*/file2.ex"
```

**List all project component usages:**

Show components public files:
```
mix clean_mixer.list_usages
```

Show components public files and who uses them:
```
mix clean_mixer.list_usages -v
```

**List cycles in component dependencies:**

```
mix clean_mixer.component_cycles
```

**List cycles in all files:**

```
mix clean_mixer.file_cycles
```

**List behaviours and their implementations:**

```
mix clean_mixer.behaviours
```

You can filter by behaviour:
```
mix clean_mixer.list -b "*.Inspect"
```

You can filter by component:
```
mix clean_mixer.list -c "some-component"
```

## Validation

You can use `clean_mixer` internal API to make some basic assertions about projects architecture:

```elixir
ExUnit.start(capture_log: true, trace: true)

defmodule ArchTest do
  use ExUnit.Case

  alias CleanMixer.Workspace

  setup_all do
    workspace = CleanMixer.workspace()
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

## Copyright and License

Copyright (c) 2019 Miroslav Malkin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[![Sponsored by FunBox](https://funbox.ru/badges/sponsored_by_funbox_centered.svg)](https://funbox.ru)
