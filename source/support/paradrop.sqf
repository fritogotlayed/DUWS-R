_target = _this select 0;

_lz = getpos _target;

if (commandpointsblu1<25) exitWith {
    ["info",["Not enough command points","Not enough Command Points (25CP required)"]] call bis_fnc_showNotification;
};

commandpointsblu1 = commandpointsblu1 - 25;
publicVariable "commandpointsblu1";

hint "Reinforcements ETA: 1 minute";
sleep 60;
hint "Paratroopers deployed";

_group = creategroup WEST;
_radius = 130;

_parachute1 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute1 setPos [_lz select 0, _lz select 1, (_lz select 2)+150];
_soldier1 = _group createUnit ["B_medic_F",[0,0,0],[],0,"form"];
_soldier1 moveindriver _parachute1;

_parachute2 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute2 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier2 = _group createUnit ["B_Soldier_LAT_F",[0,0,0],[],0,"form"];
_soldier2 moveindriver _parachute2;

_parachute3 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute3 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier3 = _group createUnit ["B_Soldier_GL_F",[0,0,0],[],0,"form"];
_soldier3 moveindriver _parachute3;

_parachute1 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute1 setPos [_lz select 0, _lz select 1, (_lz select 2)+150];
_soldier1 = _group createUnit ["B_soldier_gl_F",[0,0,0],[],0,"form"];
_soldier1 moveindriver _parachute1;

_parachute2 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute2 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier2 = _group createUnit ["B_Soldier_ar_F",[0,0,0],[],0,"form"];
_soldier2 moveindriver _parachute2;

_parachute3 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute3 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier3 = _group createUnit ["B_Soldier_F",[0,0,0],[],0,"form"];
_soldier3 moveindriver _parachute3;

_parachute2 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute2 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier2 = _group createUnit ["B_Soldier_lat_F",[0,0,0],[],0,"form"];
_soldier2 moveindriver _parachute2;

_parachute3 = "Steerable_Parachute_F" CreateVehicle _lz;  
_parachute3 setPos [(_lz select 0)+(random _radius)-(random _radius), (_lz select 1)+(random _radius)-(random _radius), (_lz select 2)+150];
_soldier3 = _group createUnit ["B_Soldier_ar_F",[0,0,0],[],0,"form"];
_soldier3 moveindriver _parachute3;

sleep 60;

{[_x] joinSilent player} forEach units _group;
hint "The paratroopers have been added under your command";