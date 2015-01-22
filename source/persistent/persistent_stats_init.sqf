mission_array_of_islands_captured = profileNamespace getVariable "profile_array_of_islands_captured"; // Choppe la variable profile_array_of_islands_captured si elle existe

// si array_of_islands_captured n'existe pas --> la variable n'a pas encore �t� init.
if (isNil {mission_array_of_islands_captured}) then {
    // Cr�e l'array profile_array_of_islands_captured dans profileNamespace
    profileNamespace setVariable ["profile_array_of_islands_captured", []];
    saveProfileNamespace; // Sauvegarde la variable dans le profil
    mission_array_of_islands_captured = profileNamespace getVariable "profile_array_of_islands_captured"; // Choppe la variable profile_array_of_islands_captured maintenant qu'elle a �t� cr�e
};   // fin de cr�ation de profile_array_of_islands_captured, 
     // mission_array_of_islands_captured a �t� appell� dans la mission.

mission_number_of_zones_captured = profileNamespace getVariable "profile_number_of_zones_captured";

if (isNil {mission_number_of_zones_captured}) then { 
    profileNamespace setVariable ["profile_number_of_zones_captured", 0];
    saveProfileNamespace;
    mission_number_of_zones_captured = profileNamespace getVariable "profile_number_of_zones_captured";
};  

mission_number_of_missions_done = profileNamespace getVariable "profile_number_of_missions_done";

if (isNil {mission_number_of_missions_done}) then { 
    profileNamespace setVariable ["profile_number_of_missions_done", 0];
    saveProfileNamespace;
    mission_number_of_missions_done = profileNamespace getVariable "profile_number_of_missions_done";
};     

mission_DUWS_firstlaunch = profileNamespace getVariable "profile_DUWS_firstlaunch";

if (isNil {mission_DUWS_firstlaunch}) then { 
    profileNamespace setVariable ["profile_DUWS_firstlaunch", true];
    saveProfileNamespace;
    mission_DUWS_firstlaunch = profileNamespace getVariable "profile_DUWS_firstlaunch";
};      

// TOUTES LES VARIABLES PERSISTANCES ON ETE APPELLES ET MISES DANS LA MISSION
// Lance l'init de l'xp
_handle = [] execVM "persistent\experience\experience_init.sqf";
waitUntil {scriptDone _handle};