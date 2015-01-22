_radius = _this select 0;
_diff = _this select 1;

//zones_number

//_radius = 200; // remove after, debug purpose
//_diff = 0.5;

// ON WATER ? >> FLAT ? >> DISTANCE BETWEEN ZONES ? >> OK !

_mapSize = getNumber(configFile >> "cfgWorlds" >> worldName >> "mapSize");
sleep 2;

_zones_array = [[0,0,0]];
_distances = [];
for [{_i=1}, {_i<=zones_number}, {_i=_i+1}] do {
    //   hintSilent format["Looking for zone location #%1\nPlease wait, this may lag a bit...",_i];
    _found = false;
    _zone_radius = 0;
    while {_zone_radius<=100} do {
        // CREATE RANDOM PARAMETERS FOR THE ZONE -- BEGIN
        // generate random radius (max 750) and then determine the pts
        _zone_radius = round (random 750);   
        _points = round (_zone_radius/10);
        _fortified = false;
        // CREATE RANDOM PARAMETERS FOR THE ZONE -- END
    };

    while {!_found} do {
        _truc = "B_Truck_01_covered_F" createVehicle ([0,0,0]);

        _posX = random _mapSize ;
        _posY = random _mapSize ;
        _truc setPosATL [_posX, _posY, 0];
        _posDeTruc = getPos _truc;

        deleteVehicle _truc;
        _posDeTrucZ = _posDeTruc select 2;
        sleep 0.1;
        if (_posDeTrucZ > 0) then {
            _meilleurTruc = "B_Truck_01_covered_F" createVehicle (_posDeTruc);   // Reference truck
            _posDeMeilleurTruc = getPos _meilleurTruc;
            _playerDistance = _posDeMeilleurTruc distance player;
            deleteVehicle _meilleurTruc;

            _trucX = "B_Truck_01_covered_F" createVehicle ([(_posDeMeilleurTruc select 0)+_radius, _posDeMeilleurTruc select 1, _posDeMeilleurTruc select 2]);
            _trucY = "B_Truck_01_covered_F" createVehicle ([_posDeMeilleurTruc select 0, (_posDeMeilleurTruc select 1)+_radius, _posDeMeilleurTruc select 2]);
            _truc_X = "B_Truck_01_covered_F" createVehicle ([(_posDeMeilleurTruc select 0)-_radius, _posDeMeilleurTruc select 1, _posDeMeilleurTruc select 2]);
            _truc_Y = "B_Truck_01_covered_F" createVehicle ([_posDeMeilleurTruc select 0, (_posDeMeilleurTruc select 1)-_radius, _posDeMeilleurTruc select 2]);

            _posTrucX = getpos _trucX;
            _posTrucY = getpos _trucY;
            _posTruc_X = getpos _truc_X;
            _posTruc_Y = getpos _truc_Y;

            _diffX = (_posDeMeilleurTruc select 2)-((getpos _trucX) select 2);
            _diffY = (_posDeMeilleurTruc select 2)-((getpos _trucY) select 2);
            _diff_X = (_posDeMeilleurTruc select 2)-((getpos _truc_X) select 2);
            _diff_Y = (_posDeMeilleurTruc select 2)-((getpos _truc_Y) select 2);

            _diffAbsX = abs _diffX;
            _diffAbsY = abs _diffY;
            _diffAbs_X = abs _diff_X;
            _diffAbs_Y = abs _diff_Y;

            deleteVehicle _trucX;
            deleteVehicle _trucY;
            deleteVehicle _truc_X;
            deleteVehicle _truc_Y;

            if (_diffAbsX<=_diff AND _diffAbsY<=_diff AND _diffAbs_X<=_diff AND _diffAbs_Y<=_diff AND _playerDistance>1000) then {
                // VERIFIE SI RADIUS A NIVEAU (-) ET ELOIGNE DU JOUEUR ET REGARDE LA DISTANCE DES AUTRES ZONES
                _found_distance = true;
                _MissionPos = _posDeMeilleurTruc;
                _distance = [];
                for [{_t=1}, {_t<=count _zones_array}, {_t=_t+1}] do { // I HAVE NO IDEA OF WHAT I'VE DONE
                    _zones_array_index = _t-1;
                    _distance = _distance +[(_zones_array select _zones_array_index) distance (_MissionPos)]; // _distance is an array of all the distances relative to the newly found position and the other zones
                    hint format["%1",_distance];
                };
                for [{_t=1}, {_t<=count _distance}, {_t=_t+1}] do { // OH GAWD
                    _distances_array_index = _t-1;
                    _check = (_distance select _distances_array_index); // check the distances contained in _distance array 1 by 1 by sending them to _check.
                    hint format["%1",_check];
                    if (_check < 1000) then {    // If _check is under 1000
                        _found_distance = false;
                    };
                };
                if (_found_distance) then {
                    _null = [format["Zone %1",_i],_points,_zone_radius,_MissionPos,_fortified] execvm "initZones\createzone.sqf";
                    _found=true;
                    _zones_array = _zones_array + [_MissionPos];
                    // hintSilent format["Zone location #%1 found !",_i];
                };
            };
        };
    };
};

hintSilent "All zones found, have fun !";

if (debugmode) exitWith {};
sleep 0.2;
Savegame;