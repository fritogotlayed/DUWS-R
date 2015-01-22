_group =_this select 0;
_unitPos = _this select 1;

_group setCombatMode "RED";

_wp = _group addWaypoint [_unitPos, 0];
_wp setWaypointType "SAD";
_wp setWaypointCompletionRadius 40;
_wp setWaypointTimeout [300, 450, 600];