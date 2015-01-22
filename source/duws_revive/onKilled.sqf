_killedPlayer = _this select 0;
_corpse = _this select 1;

_deathPos = getpos _corpse;
deletevehicle _corpse;
player allowdamage false;
player setpos _deathPos;
[player,"DUWS_sync_animinjured"] spawn BIS_fnc_mp;
[player,saved_loadout] spawn setLoadout;

DUWS_player_injured = true;

_handle = createDialog "duws_revive_menu";
waitUntil {dialog};
  
[player,"DUWS_revive_addaction"] spawn BIS_fnc_MP;