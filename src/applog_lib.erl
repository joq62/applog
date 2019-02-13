%%% -------------------------------------------------------------------
%%% Author  : uabjle
%%% Description : dbase using dets 
%%%
%%% Created : 10 dec 2012
%%% -------------------------------------------------------------------
-module(applog_lib).
 


%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------
-include("applog/src/applog_local.hrl").

-include("include/dns.hrl").
-include("include/data.hrl").
%% --------------------------------------------------------------------

%% External exports
-compile(export_all).

%-export([load_start_node/3,stop_unload_node/3
%	]).


%% ====================================================================
%% External functions
%% ====================================================================

%% --------------------------------------------------------------------
%% Function: 
%% Description:
%% Returns: non
%% --------------------------------------------------------------------
log(Msg)->
    {ok,S}=file:open(?LOG_CURRENT,[write,append]),
    io:format(S,"~p.~n",[Msg]),
    file:close(S),
    Size=filelib:file_size(?LOG_CURRENT),
    if
	Size>?LOG_MAX_SIZE->
	    file:rename(?LOG_CURRENT,?LOG_OLD);
	true ->
	    ok
    end.

%% --------------------------------------------------------------------
%% Function: 
%% Description:
%% Returns: non
%% --------------------------------------------------------------------
%filter_events(Key
