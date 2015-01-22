// _null = [salvos, radius, interval between salvos(in seconds), shots per salvo, support type, CP cost, ammotype] execVM "support\arty.sqf"
//  AMMO TYPES: R_60mm_HE / R_80mm_HE /Bo_Air_LGB(no sounds)/ Grenade / Bo_Mk82
//  SUPPORT TYPE: 1 = arty, 2 = mortar, 3 = jdam

_salvos = _this select 0;
_radius = _this select 1;
_interval = _this select 2;
_rps = _this select 3;
_supportype = _this select 4; // 1 = arty, 2 = mortar, 3 = jdam
_cost = _this select 5; 
_ammotype = _this select 6;

_timer = 60;
clicked = false;

// IF NOT ENOUGH PTS
if (commandpointsblu1<_cost) exitWith {
    ["info",["Support","You don't have enough command points"]] call bis_fnc_showNotification;
    sleep 30;
    if (_supportype==1) exitWith {
        _art = [player1,"artillery"] call BIS_fnc_addCommMenuItem;
    };
    if (_supportype==2) exitWith {
        _art = [player1,"mortar"] call BIS_fnc_addCommMenuItem;
    };
    if (_supportype==3) exitWith {
        _art = [player1,"JDAM"] call BIS_fnc_addCommMenuItem;
    };
};

_pos = [];
hint "Click on your map to give the coordinates or wait 60 seconds to cancel the strike";
OnMapSingleClick format["_null = [_pos,%2,%3,%4,%5,%6,%7,'%8'] execVM 'support\arty.sqf';clicked=true;onMapSingleClick ''",_pos,_salvos,_radius,_interval,_rps,_supportype,_cost,_ammotype];
//hint format["Position: %1\nSalvos:%2\nRadius:%3\nInterval:%4\nRPS:%5\nSupport type:%6\nCost:%7\nAmmo type:'%8'", _position, _salvos, _radius, _interval, _rps, _supportype, _cost, _ammotype];

// TIMER
while {_timer>0 AND !clicked} do {
    _timer = _timer-1; // remove 1 to timer
    sleep 1;
};
// TIMER ELLAPSED OR CLICKED
sleep 60;
OnMapSingleClick "";

if (_supportype==1) exitWith {
    _art = [player1,"artillery"] call BIS_fnc_addCommMenuItem;
};
if (_supportype==2) exitWith {
    _art = [player1,"mortar"] call BIS_fnc_addCommMenuItem;
};
if (_supportype==3) exitWith {
    _art = [player1,"JDAM"] call BIS_fnc_addCommMenuItem;
};