%% -*- mode: nitrogen -*-
-module (toggle_box_demo).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").
-include_lib("nitrogen_togglebox/include/records.hrl").

main() -> #template { file="./site/templates/basic.html" }.


body() -> 
    [
	[#toggle_box{on="enabled",
		     off="disabled",
		on_style = S} || S  <- ["primary","success","info","warning","danger"]]

    ].
	
