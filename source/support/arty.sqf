// _null = [position,salvos, radius, interval between salvos, shots per salvo] execVM "support\arty.sqf"
// R_60mm_HE / R_80mm_HE /Bo_Air_LGB(no sounds)/ Grenade / Bo_Mk82

_position = _this select 0;
_salvos = _this select 1;
_radius = _this select 2;
_interval = _this select 3;
_rps = _this select 4;
_supportype = _this select 5; // 1 = arty, 2 = mortar, 3 = jdam
_cost = _this select 6;
_ammotype = _this select 7;

_rpsinit = _rps;

hint "Coordinates received, splash in 30 seconds";
//hint format["Position: %1\nSalvos:%2\nRadius:%3\nInterval:%4\nRPS:%5\nSupport type:%6\nCost:%7\nAmmo type:%8", _position, _salvos, _radius, _interval, _rps,_supportype,_cost,_ammotype];

commandpointsblu1 = commandpointsblu1 - _cost;
publicVariable "commandpointsblu1";

sleep 30;

// NUMBER OF SALVOS
while {_salvos>0} do {
    _rps = _rpsinit; // reset number of remaining rounds for next salvo
    while {_rps>0} do { // FIRE SALVO
        _bomb= _ammotype createVehicle [(_position select 0)+(random _radius)-(random _radius), (_position select 1)+(random _radius)-(random _radius), (_position select 2)]; //spawn shells
        sleep ((random 20)/10);
        _rps = _rps-1 // REMOVE 1 ROUND TO SALVO
    };
    _salvos = _salvos-1; // remove 1 salvo to counter
    sleep _interval;
};

hint "Ordinance complete";