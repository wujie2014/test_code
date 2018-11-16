-module(test_dict).

-compile(export_all).

test_new() ->
	dict:new().

test_fold() ->
	D = dict:from_list([{k1, 1}, {k2, 2}, {k3, 3}]),
	dict:fold(fun(Key, Val, Acc) ->
				  io:format("---key:~p val:~p~n", [Key, Val]),
				  Val * Val + Acc
		  end, 0, D).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I + 1, Max, F)].
