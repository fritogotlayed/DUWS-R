//faction = "OPF_F"; faction = "BLU_F"; faction = "IND_F"; faction = "CIV_F";
//vehicleClass = "Armored" "Car" "Ship" "Static" "Air"
//hasDriver = 1;
//canFloat = 0;

_faction = _this select 0;
_vehClass = _this select 1;
_position = _this select 2;
_radius = _this select 3;

_cfgVehicles = configFile >> "CfgVehicles";
_totalentries = count _cfgVehicles;  // GO INTO CFGVEHICLES AND CHECK NUMBER OF ENTRIES
_realentries = _totalentries - 1;
_found = false;

_foundVeh = "";
while {!_found} do {
    _checked_veh = _cfgVehicles select round (random _realentries);  // RANDOMLY SELECT AN ENTRY
    _classname = configName _checked_veh;
    if (isClass _checked_veh) then { // CHECK IF THE SELECTED ENTRY IS A CLASS
        //hintSilent format["%1",_classname];
        sleep 0.005;
        _actual_vehclass = getText (_checked_veh >> "vehicleClass");
        _actual_faction = getText (_checked_veh >> "faction");
        _scope = getNumber (_checked_veh >> "scope"); // check if actually present in editor
        _simulation_paracheck = getText (_checked_veh >> "simulation"); // check if not a parachute
        if (_actual_vehclass == _vehClass && _actual_faction == _faction && _scope != 0 && _simulation_paracheck != "parachute") exitWith {
            //   hintSilent format["%1",_classname];
            //   _veh = createVehicle [_classname, _position, [], 0, _vehClass];
            _foundVeh = _classname;
            _found = true;
        };
    };
};   // --- VEHICLE FOUND --> _foundVeh

// DETERMINE LA FACTION
_side = EAST; 
if(_faction=="BLU_F") then {_side=WEST};
if(_faction=="OPF_F") then {_side=EAST};
if(_faction=="IND_F") then {_side=RESISTANCE};
if(_faction=="CIV_F") then {_side=CIVILIAN};  

_createdVehFnc = [_position,0,_foundVeh,_side] call bis_fnc_spawnvehicle;

_vehGroup = _createdVehFnc select 2;
//hint format["%1",_patrolRadius];
_opf_assault = [_vehGroup] execVM "WARCOM\WARCOM_wp_opf_patrol.sqf";

//_crews = _createdVehFnc select 1;   //
//_driver = _crews select 0;          //DEBUG
//addSwitchableUnit _driver;          //