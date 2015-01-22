DUWS_PlayerRespawnReviveEH = player addEventHandler ["respawn", {_this execVM "duws_revive\onKilled.sqf"}];
DUWS_player_injured = false;

DUWS_revive_addaction = {
    if (!DUWS_player_injured) then {
        _this addaction ["<t color='#ff00ff'>Revive</t>","duws_revive\playerRevived.sqf", "", 0, true, true, "", "((_target distance _this) < 3"];
    };
};	

DUWS_revive_respawned = {
    if (!DUWS_player_injured) then {
        removeAllActions _this;
    };
};	

DUWS_revive_revived = {
    if (_this == player) then {
        DUWS_player_injured = false;
        [player,"DUWS_sync_animgood"] spawn BIS_fnc_mp;
        player allowdamage true;
        commandpointsblu1 = commandpointsblu1 + DUWSMP_CP_death_cost;
        publicvariable "commandpointsblu1";
        closedialog 0;
        _handle = [player,"DUWS_revive_respawned"] spawn BIS_fnc_MP;
    };
};

DUWS_sync_animinjured = {
    _this switchmove "acts_InjuredLookingRifle02";
};

DUWS_sync_animgood = {
    _this switchmove "AmovPpneMstpSnonWnonDnon";
};

DUWS_sync_animhealing = {
    _this switchmove "AinvPknlMstpSlayWpstDnon_medic";
};

// Compile scripts
getLoadout = compile preprocessFileLineNumbers 'duws_revive\get_loadout.sqf';
setLoadout = compile preprocessFileLineNumbers 'duws_revive\set_loadout.sqf';

// Save loadout every 5 seconds
[] spawn {
    while{true} do {
        if(alive player) then {
            saved_loadout = [player] call getLoadout;
        };
        sleep 5;
    };
};
