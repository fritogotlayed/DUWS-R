_timer = 60;
clicked = false;

// IF NOT ENOUGH PTS
if (commandpointsblu1<3) exitWith {
    ["info",["Not enough command points","Not enough Command Points (3CP required)"]] call bis_fnc_showNotification;
    sleep 30;
    _art = [player1,"uav_recon"] call BIS_fnc_addCommMenuItem;
};

hint "Click on your map to scan a location using the UAV";
OnMapSingleClick "_null = [_pos,500] execVM 'support\uav_map.sqf';clicked=true;onMapSingleClick ''; hint 'Coordinates received'";

// TIMER
while {_timer>0 AND !clicked} do {
    _timer = _timer-1; // remove 1 to timer
    sleep 1;
};

// TIMER ELLAPSED OR CLICKED
sleep 80;
_art = [player1,"uav_recon"] call BIS_fnc_addCommMenuItem;
OnMapSingleClick "";