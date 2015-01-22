_group =_this select 0;

_group setCombatMode "RED";

{
    _wp = _group addWaypoint [_x, 0];
    _wp setWaypointType "SAD";
	_wp setWaypointCompletionRadius 40;
	_wp setWaypointTimeout [300, 450, 600]; 
} forEach WARCOM_createdZones;