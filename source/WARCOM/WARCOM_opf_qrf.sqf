if (!WARCOM_qrf_ready) exitWith {};
WARCOM_qrf_ready = false;
_attachedUnit = _this select 0;
_unitPos = getpos _attachedUnit;
//hint format["%1",_attachedUnit];

// Attack waves main
if (count WARCOM_zones_controled_by_OPFOR > 0) then { // make sure opfor is controlling at least 1 zones
    sleep 2;

    // find a zone where to spawn OPF wave away from player *** BEGIN
    _found = false;
    _randomZone = [];
    _failSafe = 0;
    while {!_found} do {
        _randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
        if (_randomZone distance player > 2000) then {_found=true;};
        sleep 0.2;

        // player sidechat format["Failsafe: %1",_failsafe];
        _failSafe = _failSafe + 1;
        if (_failsafe > 10) then {sleep 300; _failsafe = 0;}
    };

    // find a zone *** end
    _randomZone = [(_randomZone select 0)+40,_randomZone select 1];
    _group = [_randomZone, EAST, WARCOM_opf_patrol_type,[],[],WARCOM_opf_ai_skill_range] call BIS_fnc_spawnGroup;
    _opf_assault = [_group,_unitPos] execVM "WARCOM\WARCOM_wp_opf_qrf.sqf";
    // _blu_assault = [_group,"derp"] execVM "WARCOM\WARCOM_gps_marker.sqf";
};

sleep 1800;
WARCOM_qrf_ready = true;