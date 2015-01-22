// Cooldown les variables
_cooldown = 3600;
_ability_name = "Field Repair";
_varname = "skill_activate_fieldrefit";
_radio = "ECHO";

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

    // check if the parameters are ok before launching the abilty
    if (player != vehicle player) then { // check if player is inside a vehicle
        _veh = vehicle player;
        deleteVehicle _trg;

        titleText [format["%1 activated, the vehicle is being fixed...",_ability_name], "PLAIN DOWN"];

        /// -----   ABILITY IS ACTIVATED
        sleep 10;
        _actualFuel = fuel _veh;
        _veh setFuel (_actualFuel + 0.1);
        _veh setdamage 0;
        /// ----   ABILITY IS ACTIVATED

        titleText [format["%1 done\nCooldown: 1 hour",_ability_name,_cooldown], "PLAIN DOWN"];
        sleep _cooldown;
        titleText [format["%1 available",_ability_name], "PLAIN DOWN"];

        // AJOUTE L'OPTION AU JOUEUR
        _trg=createTrigger["EmptyDetector",[0,0,0]];
        _trg setTriggerArea[5,5,0,false];
        _trg setTriggerActivation[_radio,"PRESENT",true];
        _trg setTriggerStatements["this", format["%1 = true",_varname], ""];
        _trg setTriggerText format["%1",_ability_name];
    } else {
        titleText ["You must be inside a vehicle", "PLAIN DOWN"];
    };
};