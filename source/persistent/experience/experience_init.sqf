// Initialise l'XP
experience_islands = count mission_array_of_islands_captured * 5;
experience_zones = mission_number_of_zones_captured;
experience_missions = mission_number_of_missions_done * 2;
experience_total = experience_missions + experience_zones + experience_islands;

[] spawn {  // MONITOR ANY CHANGES IN PERSISTENT STATS AND MODIFY XP
    while {true} do {
        sleep 5;
        experience_zones = mission_number_of_zones_captured;
        sleep 5;
        experience_missions = mission_number_of_missions_done * 2;
        sleep 5;
        experience_total = experience_missions + experience_zones + experience_islands;
    };
};

_handle = [] execVM "persistent\experience\experience_ability_check.sqf"  // lance le script de check de l'xp.