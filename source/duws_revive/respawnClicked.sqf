_handle = [player,"DUWS_revive_respawned"] spawn BIS_fnc_MP;
waituntil {scriptdone _handle};

DUWS_player_injured = false;
[player,"DUWS_sync_animgood"] spawn BIS_fnc_mp;
player setpos [getpos hq_blu1 select 0, (getpos hq_blu1 select 1)+10];
player allowdamage true;

closedialog 0;