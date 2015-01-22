_player_has_gps = false;
private ["_markername"];

while {true} do {
	while {!_player_has_gps} do {
        _number = assignedItems player find "ItemGPS";
        if (_number != -1 && !_player_has_gps) then { // Check if player has a gps assigned, if yes create marker
            _markername = format["gps%1%2%3",round (getpos player select 0),round (getpos player select 1),round (random 10000)]; // --START CREATE MARKER--
            _markerstr = createMarker [str(_markername), getpos player];
            _markerstr setMarkerShape "ICON";
            str(_markername) setMarkerType "mil_arrow2";
            str(_markername) setMarkerColor "ColorGreen";
            str(_markername) setMarkerSize [0.3, 0.5];
            str(_markername) setMarkerText format["%1",profileName];
            _player_dir = getDir player;
            str(_markername) setmarkerdir _player_dir;
            _player_has_gps = true;
        };	// --END CREATE MARKER--
        sleep 3;
    };
	while {_player_has_gps} do {
        _player_dir = getDir player;
		str(_markername) setmarkerdir _player_dir;		
		str(_markername) setMarkerPos getpos player;
		_number = assignedItems player find "ItemGPS";
		if (_number == -1) then {_player_has_gps = false; deletemarker str(_markername)};
		sleep 0.7;
	};
    sleep 0.2;
};