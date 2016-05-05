

-record(toggle_box, {?ELEMENT_BASE(element_togglebox),
        text=""                 :: text(),
        body=""                 :: body(),
		on ="On"				:: text(),				% Label Text for on position
		off="Off"				:: text(),				% Label Text for off position
		on_style="default"		:: string(), 			% "primary"|"success"|"info"|"warning"|"danger"|"default"
	    off_style="default"		:: string(),			% "primary"|"success"|"info"|"warning"|"danger"|"default"
        html_encode=true        :: html_encode(),
        next                    :: id(),
        click                   :: actions(),
        enter_clicks=[]         :: [id()],
        postback                :: term(),
        disabled=false          :: boolean(),
        handle_invalid=false    :: boolean(),
        on_invalid              :: undefined | actions(),
        delegate                :: module()
		}).
