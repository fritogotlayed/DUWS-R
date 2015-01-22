_target = _this select 0;

_location = getpos _target;

if (commandpointsblu1<2) exitWith {
    ["info",["Not enough command points","Not enough Command Points (2CP required)"]] call bis_fnc_showNotification;
};
commandpointsblu1 = commandpointsblu1 - 2;
publicVariable "commandpointsblu1";

hint "A supply crate has been dropped near the FOB";

_parachute = "Steerable_Parachute_F" CreateVehicle _location;
_parachute setPos [_location select 0, _location select 1, (_location select 2)+50];

_ammo = "B_supplyCrate_F" CreateVehicle [_location select 0,_location select 1,(_location select 2)+20];
_ammo attachTo [_parachute,[0,0,0]];

_ammo addMagazineCargo ["30Rnd_65x39_caseless_mag", 70];
_ammo addMagazineCargo ["30Rnd_65x39_caseless_mag_Tracer", 70];
_ammo addMagazineCargo ["100Rnd_65x39_caseless_mag", 70];
_ammo addMagazineCargo ["100Rnd_65x39_caseless_mag_tracer", 70];
_ammo addMagazineCargo ["1Rnd_HE_Grenade_shell", 90];
_ammo addMagazineCargo ["UGL_FlareRed_F", 70];
_ammo addMagazineCargo ["UGL_FlareGreen_F", 70];
_ammo addMagazineCargo ["1Rnd_Smoke_Grenade_shell", 70];
_ammo addMagazineCargo ["1Rnd_SmokeRed_Grenade_shell", 70];
_ammo addMagazineCargo ["1Rnd_SmokeBlue_Grenade_shell", 70];
_ammo addMagazineCargo ["NLAW_F", 70];
_ammo addMagazineCargo ["Chemlight_green", 70];

_ammo addBackpackCargo ["B_AssaultPack_khk",10];

if (support_armory_available) then {_ammo addaction ["<t color='#ff1111'>Armory</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"]};

// magazines[] = {"1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareCIR_F","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell"};

waitUntil {sleep 1; getpos _ammo select 2<0.2};
_smoke = "SmokeShellGreen" CreateVehicle (getpos _ammo);
["info",["Supply delivered","The supply crate has been marked with green smokes"]] call bis_fnc_showNotification;