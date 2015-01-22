// R_60mm_HE / R_80mm_HE /Bo_Air_LGB(no sounds)/ Grenade / Bo_Mk82
//
// _null = [1, 250, 1, 90, 1, 5, "grenade"] execVM "support\cluster\mapclickcluster.sqf"

_position = _this select 0;
_salvos = _this select 1;
_radius = _this select 2;
_interval = _this select 3;
_rps = _this select 4;
_supportype = _this select 5; // 1 = arty, 2 = mortar, 3 = jdam
_cost = _this select 6;
_ammotype = _this select 7;

_rpsinit = _rps;

//hint format["Position: %1\nSalvos:%2\nRadius:%3\nInterval:%4\nRPS:%5\nSupport type:%6\nCost:%7\nAmmo type:%8", _position, _salvos, _radius, _interval, _rps,_supportype,_cost,_ammotype];

commandpointsblu1 = commandpointsblu1 - _cost;
publicVariable "commandpointsblu1";

hint "Coordinates received !";

// create marker on target
_markername = format["clus%1%2",_position]; // Define marker name
//hint _markername;
_markerstr = createMarker [str(_markername), _position];
_markerstr setMarkerShape "ELLIPSE";
str(_markername) setMarkerColor "ColorGrey";
str(_markername) setMarkerSize [_radius,_radius]; 

// make HQ zone notification trigger
_trg5=createTrigger["EmptyDetector",_position];
_trg5 setTriggerArea[_radius,_radius,0,false];
_trg5 setTriggerActivation["ANY","PRESENT",true];
_trg5 setTriggerStatements["this","", ""];

// create unit for comms
_group = createGroup west;
_unit = _group createUnit ["B_Soldier_SL_F", [0,0,0], [], 0, "FORM"];
_unit allowDamage false;

// generate random name
_fobname = [1] call compile preprocessFile "random_name.sqf";
_random1 = round random 9;
_random2 = round random 9; 

_unit sidechat format["This is %1 %2-%3, we are approaching the designated target area, ETA 2 minutes",_fobname,_random1,_random2];
sleep 60;
_unit sidechat format["This is %1 %2-%3, ETA 1 minute",_fobname,_random1,_random2];
sleep 30;
_unit sidechat format["This is %1 %2-%3, we have the target in visual, CBUs release in 30 seconds.",_fobname,_random1,_random2];
sleep 30;
_unit sidechat format["CBUs released, splash in 20 seconds."];
sleep 20;

// NUMBER OF SALVOS
while {_salvos>0} do {
    _rps = _rpsinit; // reset number of remaining rounds for next salvo
    while {_rps>0} do { // FIRE SALVO
        _bomb= _ammotype createVehicle [(_position select 0)+(random _radius)-(random _radius), (_position select 1)+(random _radius)-(random _radius), (_position select 2)]; //spawn shells
        _bomb= _ammotype createVehicle [(_position select 0)+(random _radius)-(random _radius), (_position select 1)+(random _radius)-(random _radius), (_position select 2)]; //spawn shells
        _bomb= _ammotype createVehicle [(_position select 0)+(random _radius)-(random _radius), (_position select 1)+(random _radius)-(random _radius), (_position select 2)]; //spawn shells
        _bomb= _ammotype createVehicle [(_position select 0)+(random _radius)-(random _radius), (_position select 1)+(random _radius)-(random _radius), (_position select 2)]; //spawn shells
        sleep ((random 1)/50);
        _rps = _rps-1 // REMOVE 1 ROUND TO SALVO
    };
    _salvos = _salvos-1; // remove 1 salvo to counter
    sleep _interval;
};
sleep 3;

_vehlist = list _trg5;
{
    _modif = (random 10)/10;
    _vehlife = getdammage _x;
    _x setdammage (_vehlife + 0.7 + _modif);
} forEach _vehlist;
sleep 3;
_unit sidechat format["This is %1 %2-%3, target hit.",_fobname,_random1,_random2];

sleep 10;
_unit sidechat format["This is %1 %2-%3, winchester, we are RTB.",_fobname,_random1,_random2];

deleteVehicle _trg5;
deletemarker str(_markername);
deleteVehicle _unit;