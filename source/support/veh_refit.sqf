_mounted_veh = vehicle player;

if (commandpointsblu1<2) exitWith {
    ["info",["Not enough command points","Not enough Command Points (2CP required)"]] call bis_fnc_showNotification;
};

if (_mounted_veh==player) exitWith {
    Hint "You must be inside a vehicle to refit it."
};

// check if near the officer
if ((hq_blu1 distance player)>100) exitWith {
    ["veh_refit_hint",["Too far away","Your vehicle must be near the base"]] call bis_fnc_showNotification;
};

commandpointsblu1 = commandpointsblu1 - 2;
publicVariable "commandpointsblu1";
_mounted_veh setDamage 0;
_mounted_veh setFuel 1;
_mounted_veh setVehicleAmmoDef 1;
["veh_refit_hint",["Vehicle ready !","Your vehicle has been rearmed, refueled and repaired"]] call bis_fnc_showNotification;