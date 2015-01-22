_loop = true;

WARCOM_blu_patrol_type = "";

// Type of attack wave
[] spawn {
    WARCOM_blu_patrol_type = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam");

    waitUntil {sleep 1; WARCOM_blufor_ap>40};
    WARCOM_blu_patrol_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad");

    waitUntil {sleep 1; WARCOM_blufor_ap>65};
    WARCOM_blu_patrol_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons");

    waitUntil {sleep 1; WARCOM_blufor_ap>100};
    WARCOM_blu_patrol_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Mechanized" >> "BUS_MechInfSquad");

    waitUntil {sleep 1; WARCOM_blufor_ap>135};
    WARCOM_blu_patrol_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Mechanized" >> "BUS_MechInf_AT");
};

// Attack waves main
[] spawn {
    while {true} do {
        if (count WARCOM_zones_controled_by_BLUFOR > 1) then { // make sure blufor is controlling at least 2 zones
            sleep 2;

            // find a zone where to spawn OPF wave *** BEGIN
            _found = false;
            _randomZone = [];
            _failSafe = 0;
            while {!_found} do {
                _randomZone = WARCOM_zones_controled_by_BLUFOR call BIS_fnc_selectRandom;
                if (_randomZone distance player > 2000) then {_found=true;};
                sleep 0.2;

                // player sidechat format["Failsafe: %1",_failsafe];
                _failSafe = _failSafe + 1;
                if (_failsafe > 10) then {sleep 300; _failsafe = 0;}
            };

            // find a zone *** end
            _randomZone = [(_randomZone select 0)+40,_randomZone select 1];
            _group = [_randomZone, WEST, WARCOM_blu_patrol_type,[],[],WARCOM_blu_ai_skill_range] call BIS_fnc_spawnGroup;
            _opf_assault = [_group] execVM "WARCOM\WARCOM_wp_blu_patrol.sqf";
            // _blu_assault = [_group,"derp"] execVM "WARCOM\WARCOM_gps_marker.sqf";

            // spawn armored
            if (WARCOM_blufor_ap>50) then {
                ["BLU_F","armored",_randomZone] execVM "WARCOM\random_veh_blu_patrol.sqf";
            };

            if (WARCOM_blufor_ap>200) then {
                ["BLU_F","air",_randomZone] execVM "WARCOM\random_veh_blu_patrol.sqf";
            };
        };
    sleep (random 1200);	//  patrol delay
    };
};