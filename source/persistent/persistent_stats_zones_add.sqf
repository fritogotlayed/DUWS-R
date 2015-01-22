mission_number_of_zones_captured = (mission_number_of_zones_captured + 1);
profileNamespace setVariable ["profile_number_of_zones_captured", mission_number_of_zones_captured]; 
saveProfileNamespace; // sauvegarde le profil

if (isMultiplayer) then {
    if (isServer) then {
        capturedZonesNumber = capturedZonesNumber + 1;
        publicVariable "capturedZonesNumber";
    };
};