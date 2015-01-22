// Cooldown les variables
_cooldown = 600;
_ability_name = "Veteran instinct";
_varname = "skill_activate_veteran";
_radio = "DELTA";

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

    titleText [format["%1 activated",_ability_name], "PLAIN DOWN"];

    /// -----   ABILITY IS ACTIVATED
    // Cr�e le marqueur de detection
    _trgplayer = createTrigger["EmptyDetector",[0,0,0]];
    _trgplayer setTriggerArea[50,50,0,false];
    _trgplayer setTriggerActivation["EAST","PRESENT",true];
    _trgplayer setTriggerStatements["this", "", ""];
    sleep 1;

    _duration = 60;
    while {_duration >=0} do {
         _trgplayer setpos getpos player;
         _ennemies = list _trgplayer;

        if (count _ennemies>0) then {
            titleText ["There's enemies around here...", "PLAIN DOWN"];
        } else {
            titleText ["Clear so far...", "PLAIN DOWN"];
        };

        _duration = _duration - 1;
        sleep 1;
    };
    deleteVehicle _trgplayer;

    /// ----   ABILITY IS ACTIVATED
    titleText [format["%1 deactivated\nCooldown: %2 seconds",_ability_name,_cooldown], "PLAIN DOWN"];
    sleep _cooldown;
    titleText [format["%1 available",_ability_name], "PLAIN DOWN"];

    // AJOUTE L'OPTION AU JOUEUR
    _trg=createTrigger["EmptyDetector",[0,0,0]];
    _trg setTriggerArea[5,5,0,false];
    _trg setTriggerActivation[_radio,"PRESENT",true];
    _trg setTriggerStatements["this", format["%1 = true",_varname], ""];
    _trg setTriggerText format["%1",_ability_name];
};