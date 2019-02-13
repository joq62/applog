%% service_info
%% Information of the servie
-record(state, {dns_info,dns_addr}).

-define(LOG_CURRENT,"var/current.log").
-define(LOG_OLD,"var/old.log").
-define(LOG_MAX_SIZE,1000*1000).
