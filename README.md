[![Build Status](https://travis-ci.com/miros/clean_mixer.svg?branch=master)](https://travis-ci.com/miros/clean_mixer)
[![Coverage Status](https://coveralls.io/repos/github/miros/clean_mixer/badge.svg?branch=master)](https://coveralls.io/github/miros/clean_mixer?branch=master)

<a href="https://funbox.ru">
  <img src="http://funbox.ru/badges/sponsored_by_funbox_compact.svg" alt="Sponsored by FunBox" width=250 />
</a>

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

