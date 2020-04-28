-module(old_doge).

%coveralls-ignore-start

-export([ask_for_treat/0, say_hello/0]).

say_hello() -> <<"WOW WOW WOW!">>.

ask_for_treat() ->
    'Elixir.CleanMixer.Tests.CodeFixtures.DogeOwner':give_treat().

%coveralls-ignore-stop

