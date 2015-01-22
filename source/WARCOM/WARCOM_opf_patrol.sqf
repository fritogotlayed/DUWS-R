_loop = true;

WARCOM_opf_patrol_type = "";

// Type of attack wave
[] spawn {
    WARCOM_opf_patrol_type = (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam");

    waitUntil {sleep 1; WARCOM_opfor_ap>40};
    WARCOM_opf_patrol_type = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad");

    waitUntil {sleep 1; WARCOM_opfor_ap>65};
    WARCOM_opf_patrol_type = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad_Weapons");

    waitUntil {sleep 1; WARCOM_opfor_ap>100};
    WARCOM_opf_patrol_type = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Mechanized" >> "OIA_MechInfSquad");

    waitUntil {sleep 1; WARCOM_opfor_ap>135};
    WARCOM_opf_patrol_type = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Mechanized" >> "OIA_MechInf_AT");
};

// Attack waves main
[] spawn {
    while {true} do {
        if (count WARCOM_zones_controled_by_OPFOR > 1) then { // make sure opfor is controlling at least 2 zones
            sleep 2;

            // find a zone where to spawn OPF wave *** BEGIN
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
            _opf_assault = [_group] execVM "WARCOM\WARCOM_wp_opf_patrol.sqf";

            // _blu_assault = [_group,"derp"] execVM "WARCOM\WARCOM_gps_marker.sqf";

            // spawn armored
            if (WARCOM_opfor_ap>50) then {
                ["OPF_F","armored",_randomZone] execVM "WARCOM\random_veh_opf_patrol.sqf";
            };
            if (WARCOM_opfor_ap>200) then {
                ["OPF_F","air",_randomZone] execVM "WARCOM\random_veh_opf_patrol.sqf";
            };
        };
        sleep (random 1200); // patrol delay
    };
};