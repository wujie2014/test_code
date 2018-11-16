-module(lib_misc).
-compile(export_all).

%% for循环
for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I + 1, Max, F)].

%% 求和
sum([H | T]) -> H + sum(T);
sum([]) -> 0.

%% map
map([], _) -> [];
map([H | T], F) -> [F(H) | map(T, F)].

%% 快排
qsort([]) -> [];
qsort([P | T]) ->
	lists:append(qsort([X || X <- T, X < P]), [P | qsort([X || X <- T, X >= P])]).

%% 毕达哥拉斯三元组
pythag(N) ->
	[{A, B, C} ||
	 A <- lists:seq(1, N),
	 B <- lists:seq(1, N),
	 C <- lists:seq(1, N),
	 A + B + C =< N,
	 A*A + B*B =:= C*C
	].

%% 回文构词
perms([]) -> [[]];
perms(L) -> [[H | T] || H <-L, T <- perms(L --[H])].

%% 归集器
odds_and_evens(L) ->
	odds_and_evens(L, [], []).

odds_and_evens([H | T], Odds, Evens) ->
	case (H rem 2) of
		1 -> odds_and_evens(T, [H | Odds], Evens);
		0 -> odds_and_evens(T, Odds, [H | Evens])
	end;
odds_and_evens([], Odds, Evens) ->
	{Odds, Evens}.

%% 4.11-2
my_tuple_to_list(T) when is_tuple(T)->
	Length = tuple_size(T),
	my_tuple_to_list(T, Length, []).

my_tuple_to_list(T, Index, Temp) when Index > 0->
	AddElement = element(Index, T),
	my_tuple_to_list(T, Index -1, [AddElement | Temp]);
my_tuple_to_list(_T, _Index, Temp) ->
	Temp.

sum(Start, End) ->
	sum(Start, End, 0).

sum(End, End, Total) ->
	End + Total;
sum(Start, End, Total) ->
	sum(Start+1, End, Total).
