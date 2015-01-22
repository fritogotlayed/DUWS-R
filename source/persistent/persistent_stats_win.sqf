_worldName = getText(configFile >> "cfgWorlds" >> worldName >> "description");
mission_array_of_islands_captured = mission_array_of_islands_captured + [_worldName];  // Ajoute l'�le captur�e dans l'array

profileNamespace setVariable ["profile_array_of_islands_captured", mission_array_of_islands_captured]; // Met a jour l'array dans le profil
saveProfileNamespace; // sauvegarde le profil