%% This is the application resource file (.app file) for the 'base'
%% application.
{application, applog,
[{description, "applog  " },
{vsn, "1.0.0" },
{modules, 
	  [applog_app,applog_sup,applog,applog_lib]},
{registered,[applog]},
{applications, [kernel,stdlib]},
{mod, {applog_app,[]}},
{start_phases, []}
]}.
