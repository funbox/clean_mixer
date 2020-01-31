# Clean Mixer

Tools for code architecture analysis and linting

## Usage

Configure components of your codebase in `.clean_mixer.exs`

```
[
  components: [
    {"some-component", "lib/clean_mixer/path-to-files-of-some-component"},
    {"some-component/sub-component", "lib/clean_mixer/path-to-files-of-some-component/sub-component"},
  ]
]
```

## Visualization

List all project components and their dependencies:

```
mix clean_mixer.list
```

Render component dependencies with plantuml:

```
mix clean_mixer.plantuml
```

List cycles in component dependencies:

```
mix clean_mixer.cycles
```

