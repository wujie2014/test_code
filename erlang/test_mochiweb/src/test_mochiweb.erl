%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc test_mochiweb.

-module(test_mochiweb).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the test_mochiweb server.
start() ->
    test_mochiweb_deps:ensure(),
    ensure_started(crypto),
    application:start(test_mochiweb).


%% @spec stop() -> ok
%% @doc Stop the test_mochiweb server.
stop() ->
    application:stop(test_mochiweb).
