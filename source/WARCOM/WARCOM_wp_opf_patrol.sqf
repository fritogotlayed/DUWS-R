_group =_this select 0;

_group setCombatMode "RED";

{
    _wp = _group addWaypoint [_x, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointBehaviour "SAFE";
    _wp setWaypointSpeed "LIMITED";
    _wp setWaypointCompletionRadius 40;
    _wp setWaypointTimeout [300, 450, 600];
} forEach WARCOM_zones_controled_by_OPFOR;

_wp1 = _group addWaypoint [getpos leader _group, 0];
_wp1 setWaypointType "CYCLE";
_wp1 setWaypointBehaviour "SAFE";
_wp1 setWaypointSpeed "LIMITED";