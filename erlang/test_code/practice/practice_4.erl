-module(practice_4).
-compile(export_all).
%% 4.11-2
my_tuple_to_list(T) when is_tuple(T)->
	Length = tuple_size(T),
	my_tuple_to_list(T, Length, []).

my_tuple_to_list(T, Index, Temp) when Index > 0->
	AddElement = element(Index, T),
	my_tuple_to_list(T, Index -1, [AddElement | Temp]);
my_tuple_to_list(_T, _Index, Temp) ->
	Temp.


%% 4.11-3
my_time_func(F) ->
	NowTime1 = my_date_string(os:timestamp()),
	F,
	NowTime2 = my_date_string(os:timestamp()),
	io:format("cost time ~p s~n", [NowTime2 - NowTime1]).

my_date_string(Now) ->
	{A,B,_C} = Now,
	A * 1000000 + B.
