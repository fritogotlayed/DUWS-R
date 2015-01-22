// Cooldown les variables
_cooldown = 1200;
_ability_name = "Field Surgery";
_varname = "skill_activate_heal";
_radio = "CHARLIE";

// Defini la variable qui lance l'action
call compile format ["%1 = false",_varname];

// AJOUTE L'OPTION AU JOUEUR
_trg=createTrigger["EmptyDetector",[0,0,0]];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation[_radio,"PRESENT",true];
_trg setTriggerStatements["this", format["%1 = true",_varname], ""];
_trg setTriggerText format["%1",_ability_name];

_loop = true;
while {_loop} do {   // LOOP de l'ability  

    call compile format ["%1 = false",_varname];
    waitUntil {sleep 0.2; call compile format ["%1",_varname]};  // wait for the player to activate the ability

    deleteVehicle _trg;

    titleText [format["%1, patching you up...",_ability_name], "PLAIN DOWN"];

    /// -----   ABILITY IS ACTIVATED
    player playmove "AinvPknlMstpSlayWrflDnon_medic";
    sleep 4;
    player setdamage 0;
    /// ----   ABILITY IS ACTIVATED

    titleText [format["%1 done\nCooldown: 20 minutes",_ability_name,_cooldown], "PLAIN DOWN"];
    sleep _cooldown;
    titleText [format["%1 available",_ability_name], "PLAIN DOWN"];

    // AJOUTE L'OPTION AU JOUEUR
    _trg=createTrigger["EmptyDetector",[0,0,0]];
    _trg setTriggerArea[5,5,0,false];
    _trg setTriggerActivation[_radio,"PRESENT",true];
    _trg setTriggerStatements["this", format["%1 = true",_varname], ""];
    _trg setTriggerText format["%1",_ability_name];
};