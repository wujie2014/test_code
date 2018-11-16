-module(shop).
-compile(export_all).

cost(apple) ->
	5;
cost(newspaper) ->
	6;
cost(milk) ->
	10;
cost(orange) ->
	12.

total([]) ->
	0;
total([{What, N} | T]) ->
	cost(What) * N + total(T).

