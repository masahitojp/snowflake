-module(snowflake_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    ok = snowflake_logger:init(),
    snowflake_sup:start_link().

stop(_State) ->
    ok.
