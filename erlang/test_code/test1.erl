-module(test1).
-compile(export_all).
%%% try catch 简易写法
%%%
test_try_catch(Arg) ->
	try
		test_fun(Arg)
	catch
		E:R ->
			io:format("---:~w:~w~n", [E,R])
	%after
	%	io:format("-----After-----~n")
	end.

test_fun(Arg) ->
	case Arg of
		1 ->
			{ok, Arg};
		2 ->
			Arg
	end.

test_try_catch2(Arg) ->
	try test_fun(Arg) of
		{ok, Result} -> Result
	catch
		E:R ->
			io:format("---:~w:~w:~w~n", [E,R,erlang:get_stacktrace()])
	%after
	%	io:format("-----After-----~n")
	end.

test_list_foldl() ->
%%	O = [link, []],
	O1 = [no_link, []],
	{L,NO} = lists:foldl(fun (link, {_, NewOpts}) ->
					 {link, NewOpts};
			     (Opt, {LO, NewOpts}) ->
					 {LO, [Opt|NewOpts]}
			 end,
			 {no_link, []},
			 O1),
	io:format("~p ~p ~n", [L, NO]).
