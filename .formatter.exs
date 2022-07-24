# Used by "mix format"
[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  line_length: 120,
  # don't add parens around assert_value arguments
  import_deps: [:assert_value]
]
