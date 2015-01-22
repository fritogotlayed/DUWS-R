_posplayer = _this select 0;
_radius = _this select 1;
_foundPickupPos = [];
taxiCanTakeOff = false;

_music = call compile preprocessFile "support\taxi\random_music.sqf";
//B_Lifeboat

if (commandpointsblu1 < 1) exitWith {
    ["info",["Not enough command points","Not enough Command Points (1 CP required)"]] call bis_fnc_showNotification;
    sleep 15;
    _art = [player,"boat_taxi"] call BIS_fnc_addCommMenuItem;
};

_foundPickupPos = [_posplayer, 0,_radius,10,2,5,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos; // find a valid pos

// try to find a pos, if no pos is found exit the script
if (0 == _foundPickupPos select 0 && 0 == _foundPickupPos select 1) exitWith {
    hint "You must be near a clear shore or in the sea";
    sleep 5;
    _art = [player,"boat_taxi"] call BIS_fnc_addCommMenuItem;
};

// A POS NEAR THE PLAYER HAS BEEN FOUND, CHOOPA EN ROUTE
commandpointsblu1 = commandpointsblu1 - 1;
publicVariable "commandpointsblu1";

// create marker on LZ
_markerpickup = format["lz%1%2",_foundPickupPos]; // Define marker name
_markerstr = createMarker [str(_markerpickup), _foundPickupPos];
_markerstr setMarkerShape "ICON";
str(_markerpickup) setMarkerType "hd_end";
str(_markerpickup) setMarkerColor "ColorGreen";
str(_markerpickup) setMarkerText "Pickup";

// find a pos where to create the boat
_spawnPos = [_posplayer, 400,500,10,2,5,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos;

// create the boat
_helo = createVehicle ["B_Lifeboat", _spawnPos,[], 0, "FLY"];
_helogroup = createGroup west; 
_pilot = _helogroup createUnit ["B_diver_F", [5,5,5], [], 0, "NONE"];

_helo addAction ["<t color='#00b7ff'>Tell the driver where to go</t>", "support\taxi\mapclickboat.sqf", "", 0, true, true, "", "vehicle _this == _target"];
_pilot setcaptive true; 
_pilot moveindriver _helo;

_wp = _helogroup addWaypoint [[_foundPickupPos select 0, (_foundPickupPos select 1)-75], 0];
_wp setWaypointType "MOVE";
[_helogroup, 1] setWaypointCombatMode "BLUE";

_fobname = [1] call compile preprocessFile "random_name.sqf";

_pilot sideChat format["This is %1, I'm approching your location for pick up, check your map. ETA 2 minutes.",_fobname];

waitUntil {_foundpickuppos distance _helo < 350 or (getdammage _helo > 0.7 or !alive _pilot)}; // wait until the helo is near the lz

// IF THE PILOT IS DEAD OR CHOPPA DOWN ******************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    deleteMarker str(_markerpickup);
    hint format["%1 is too damaged to continue the mission",_fobname];
    // --- AJOUTER DE NOUVEAU LE SUPPORT
    sleep 15;
    _art = [player,"boat_taxi"] call BIS_fnc_addCommMenuItem;
}; 
// ****************************************************

_inVehCheck = true;
while {_inVehCheck} do {
    waitUntil {sleep 0.1;taxiCanTakeOff or (getdammage _helo > 0.7 or !alive _pilot)}; // wait until the player has given a validpos
    if (getdammage _helo > 0.7 or !alive _pilot) exitWith {}; // get out of the loop if choopa is down
    // check if player is inside choppa
    if (vehicle player != _helo) then {
        taxiCanTakeOff = false;
        _pilot sidechat format["This is %1, get back in, I can't transport you're not inside the boat !",_fobname];
        _helo addAction ["<t color='#00b7ff'>Give a location to the pilot</t>", "support\taxi\mapclickboat.sqf", "", 0, true, true, "", "vehicle _this == _target"];
    } else {
        _inVehCheck = false;
    };
};

// IF THE PILOT IS DEAD OR CHOPPA DOWN  **************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    deleteVehicle _helipad1;
    deleteMarker str(_markerpickup);
    hint format["%1 %2-%2 is too damaged to continue the mission",_fobname,_random1,_random2];
    sleep 15;
    _art = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
// --- AJOUTER DE NOUVEAU LE SUPPORT
}; 
// *****************************

// everything is ok, player is in choppa
playMusic [_music, 0];
_helo lock true;
titleText ["Driver: Roger that, we're oscar mike...", "PLAIN DOWN"];
str(_markerpickup) setMarkerPos ClickedTaxiPos; 
str(_markerpickup) setMarkerText "Drop point";

_actualboatpos = getpos player;

// IF THE PILOT IS DEAD OR CHOPPA DOWN  **************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    _helo lock false;
    deleteMarker str(_markerpickup);
    hint format["%1 %2-%2 is too damaged to continue the mission",_fobname,_random1,_random2];
    // --- AJOUTER DE NOUVEAU LE SUPPORT
    sleep 15;
    _art = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
}; 
// *****************************

// TELEPORT BOAT NEAR DROP POINT
titleText ["En route to drop point...", "BLACK OUT", 3];
_teleportPoint = [ClickedTaxiPos, 400,500,10,2,5,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos;
sleep 3.5;
_helo setpos _teleportPoint;
// tell the boat to go at wp
_wp = _helogroup addWaypoint [ClickedTaxiPos,0];
_wp setWaypointType "MOVE";
[_helogroup, 1] setWaypointCombatMode "BLUE";
sleep 3;
titleText ["En route to drop point...", "BLACK IN", 4];
_helo lock false;


waitUntil {ClickedTaxiPos distance _helo < 200  or (getdammage _helo > 0.7 or !alive _pilot)}; // wait until the helo is near the lz
// IF THE PILOT IS DEAD OR CHOPPA DOWN  **************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    deleteVehicle _helipad;
    _helo lock false;
    deleteMarker str(_markerpickup);
    hint format["%1 %2-%2 is too damaged to continue the mission",_fobname,_random1,_random2];
    // --- AJOUTER DE NOUVEAU LE SUPPORT
    sleep 15;
    _art = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
}; 
// *****************************

// time to move ppl out of the helo;
waitUntil {(getpos _helo select 2 < 4 && _helo distance ClickedTaxiPos<20)  or (getdammage _helo > 0.7 or !alive _pilot)}; // wait until the helo is near the ground
// IF THE PILOT IS DEAD OR CHOPPA DOWN  **************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    deleteVehicle _helipad;
    _helo lock false;
    hint format["%1 %2-%2 is too damaged to continue the mission",_fobname,_random1,_random2];
    // --- AJOUTER DE NOUVEAU LE SUPPORT
    sleep 15;
    _art = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
}; 
// *****************************
titleText ["Driver: We've arrived at the drop point", "PLAIN DOWN"];

{doGetOut _x; sleep 1;} forEach units group player;

sleep 40;
_pilot sideChat format["This is %1, I'm RTB",_fobname];
_wp = _helogroup addWaypoint [_teleportPoint,0];   // tell the helo to leave
_wp setWaypointType "MOVE";
deleteMarker str(_markerpickup);

waitUntil {_helo distance player>100 or (getdammage _helo > 0.7 or !alive _pilot)}; // wait until the helo is near the ground
// IF THE PILOT IS DEAD OR CHOPPA DOWN  **************
if (getdammage _helo > 0.7 or !alive _pilot) exitWith {
    hint format["%1 %2-%2 is too damaged to continue the mission",_fobname,_random1,_random2];
    // --- AJOUTER DE NOUVEAU LE SUPPORT
    sleep 15;
    _art = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
}; 
// *****************************

sleep 200;

deleteVehicle _pilot;

sleep 2;
_art = [player,"boat_taxi"] call BIS_fnc_addCommMenuItem;