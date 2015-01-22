_timer = 9999999;
clicked = false;
_helo = _this select 0;
_actionID = _this select 2;

titleText ["Pilot: Click somewhere on your map to give me a LZ, I'll see what i can do", "PLAIN DOWN"];
OnMapSingleClick "ClickedTaxiPos = _pos; clicked = true;";
_helo removeAction _actionID;
// TIMER & MAPCLICK
while {_timer>0} do {
    if (clicked) then { // player has clicked the map
        _foundPickupPos = [ClickedTaxiPos, 0,50,10,0,0.2,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos; // find a valid pos

        if (0 == _foundPickupPos select 0 && 0 == _foundPickupPos select 1) then {
            if (ClickedTaxiPos distance player < 1000) exitWith {
                clicked = false;
                titleText ["Pilot: This LZ is too close from our position", "PLAIN DOWN"];
            };
            clicked = false;
            titleText ["Pilot: No clear LZ around here, give me another location", "PLAIN DOWN"];
        } else {
            onMapSingleClick "";
            _timer = 0;
            taxiCanTakeOff = true;
        };
    };
    _timer = _timer-1; // remove 1 to timer
    sleep 0.5;
};