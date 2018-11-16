-module(math_functions).
-compile(export_all).


even(Num) ->
	case (Num rem 2) of
		0 ->
			true;
		_ ->
			false
	end.


split1(L) ->
	even_odd(L, [], []).

even_odd([], Odd, Even) ->
	{Odd, Even};
even_odd([H | T], Odd, Even) ->
	case (H rem 2) of
		1 ->
			even_odd(T, [H | Odd], Even);
		_ ->
			even_odd(T, Odd, [H | Even])
	end.

split2(L) ->
	{filter(fun(X) -> X rem 2 == 1 end, L), filter(fun(X) -> X rem 2 == 0 end, L)}.

filter(F, L) ->
	[X || X <- L, F(X)].

