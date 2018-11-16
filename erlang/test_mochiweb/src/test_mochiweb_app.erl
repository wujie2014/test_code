%% @author Mochi Media <dev@mochimedia.com>
%% @copyright test_mochiweb Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the test_mochiweb application.

-module(test_mochiweb_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for test_mochiweb.
start(_Type, _StartArgs) ->
    test_mochiweb_deps:ensure(),
    test_mochiweb_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for test_mochiweb.
stop(_State) ->
    ok.
