profileNamespace setVariable ["profile_array_of_islands_captured", []];
mission_array_of_islands_captured = [];
 
profileNamespace setVariable ["profile_number_of_zones_captured", 0]; 
mission_number_of_zones_captured = 0;

profileNamespace setVariable ["profile_number_of_missions_done", 0]; 
mission_number_of_missions_done = 0;
saveProfileNamespace; // sauvegarde le profil

closeDialog 0;

while {true} do {
    hintSilent "Please, restart the mission for the changes to be fully effective.";
    sleep 3;
};