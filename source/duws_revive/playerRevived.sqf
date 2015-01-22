_injured_player = _this select 0;
[player,"DUWS_sync_animhealing"] spawn BIS_fnc_MP;
sleep 5;
[_injured_player,"DUWS_revive_revived"] spawn BIS_fnc_MP;