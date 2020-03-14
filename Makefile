PHONY: ci

ci: export MIX_ENV=test
ci:
	mix clean && mix compile --warnings-as-errors
	mix format --check-formatted --dry-run
	mix test
	mix dialyzer
	mix cover
	# TODO increase coverage and uncomment
	# mix cover.lint
