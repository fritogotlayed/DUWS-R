_loop = true;

WARCOM_blu_attack_wave_type = "";
WARCOM_blu_attack_wave_avalaible = false;

// Type of attack wave
[] spawn {
    //WARCOM_blu_attack_wave_type = ["B_Soldier_TL_F","B_Soldier_F"];

    waitUntil {sleep 1; WARCOM_blufor_ap>=10};
    [West,"HQ"] sidechat "This is HQ, BLUFOR troops just arrived on the island, we'll soon be able to push through the enemy lines";
    WARCOM_blu_attack_wave_avalaible = true;
    WARCOM_blu_attack_wave_type = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam");

    waitUntil {sleep 1; WARCOM_blufor_ap>40};
    WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad");

    waitUntil {sleep 1; WARCOM_blufor_ap>65};
    WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons");

    waitUntil {sleep 1; WARCOM_blufor_ap>100};
    WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Mechanized" >> "BUS_MechInfSquad");

    waitUntil {sleep 1; WARCOM_blufor_ap>135};
    WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Mechanized" >> "BUS_MechInf_AT");
};

// Attack waves main
[] spawn {
    waitUntil {sleep 1; WARCOM_blu_attack_wave_avalaible};
    while {true} do {
        sleep 30;
        _group = [WARCOM_blu_hq_pos, WEST, WARCOM_blu_attack_wave_type,[],[],blufor_ai_skill] call BIS_fnc_spawnGroup;
        _TFname = [1] call compile preprocessFile "random_name.sqf";
        [West,"HQ"] sidechat format["This is HQ, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];

        _blu_assault = [_group] execVM "WARCOM\WARCOM_wp.sqf";
        _blu_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";

        sleep (WARCOM_blu_attack_delay + random 1200);
    };
};