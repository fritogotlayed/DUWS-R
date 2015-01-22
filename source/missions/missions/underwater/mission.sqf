_MissionPos = _this select 0;
// define random pos AROUND SOLDIERS. spawn markers at random.
_radius = 150;
_randompos = [(_missionpos select 0)+(random _radius)-(random _radius), (_missionpos select 1)+(random _radius)-(random _radius)];

// CREATE NAME
_mission_name = MissionNameCase5;

// CREATE MARKER (ICON)
_markername = format["sabot%1%2",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _randompos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "loc_Transmitter";
str(_markername) setMarkerColor "ColorBrown";
str(_markername) setMarkerText "Sabotage";

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipsesab",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), _randompos];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorBrown";
str(_markername2) setMarkerSize [_radius, _radius];
str(_markername2) setMarkerAlpha 0.3; 

// create TOWER 
_tower = createVehicle ["Land_dp_transformer_F", _MissionPos, [], 0, "NONE"];
_tower addaction ["Sabotage", "missions\missions\sabotage\success.sqf",[_missionPos,_mission_name,_markername,_markername2]];

// TASK AND NOTIFICATION
_VARtaskgeneratedName = format["tsksabot%1%2",round(_MissionPos select 0),round(_Missionpos select 1)]; // generate variable name for task

_taskhandle = player createSimpleTask ["taskSabot"];
_taskhandle setSimpleTaskDescription ["The enemy is using a power supply somewhere in this area. We need you to find it and sabotage it. It will allow us to have a bit of better intel on our enemies.",_mission_name,""];
_taskhandle setSimpleTaskDestination (getMarkerPos str(_markername));

if (!ismultiplayer) then {
    execVM "utilities\autoSave.sqf";
};

["TaskAssigned",["",_mission_name]] call bis_fnc_showNotification;

call compile format ["%1 = _taskhandle",_VARtaskgeneratedName]; // create variable using the generated name so we can access it with the action


// CREATE OPFOR PATROLS
sleep 1;
[_randompos, _radius] execvm "createoppatrol.sqf";
[_randompos, _radius] execvm "createoppatrol.sqf";
[_missionpos, 15] execvm "createoppatrol.sqf"; // <-- around target
sleep 10;
[_missionpos, 15] execvm "createoppatrol.sqf"; // <-- around target