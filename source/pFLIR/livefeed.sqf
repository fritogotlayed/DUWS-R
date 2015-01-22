// pFLIRenable = player addaction ["<t color='#a9ff59'>Activate FLIR</t>","pflir\livefeed.sqf","", 0,false,true,"","_target == _this"];

// pflir aim
trucPIPtarget = "Land_Sack_F" createVehicle ([0,0,0]);        // PAS OUBLIER DE SUPPRIMER LE TRUC
trucPIPtarget attachTo [player,[0,2000,1]];
trucPIPtarget hideobject true;

// pflir camera creation
_lol = [player, trucPIPtarget, player,2] call BIS_fnc_liveFeed;
BIS_liveFeed attachTo [player,[0,1,1]];
BIS_liveFeed camPrepareFOV 0.2;
BIS_liveFeed camCommitPrepared 0;

pFlirActivated = true;
player removeEventHandler ["respawn",PlayerKilledEH3];
player removeAction pFlirEnable;


// Stance management init
_actualStance = stance player;
switch (_actualStance) do {
    case "STAND": {
        BIS_liveFeed attachTo [player,[0,1,1.68]];
        trucPIPtarget attachTo [player,[0,2000,1.68]];
    };
    case "CROUCH": {
        BIS_liveFeed attachTo [player,[0,1,0.85]];
        trucPIPtarget attachTo [player,[0,2000,0.85]];
    };
    case "PRONE": {
        BIS_liveFeed attachTo [player,[0,1,0.25]];
        trucPIPtarget attachTo [player,[0,2000,0.25]];
    };	
};

// add action to disable FLIR
sleep 1;

pFLIRdisable = player addaction ["<t color='#a9ff59'>Deactivate FLIR</t>","pflir\livefeedexit.sqf","", 0,false,true,"","_target == _this"];
PlayerKilledEH2 = player addEventHandler ["killed", {execvm "pflir\livefeedexit.sqf"}]; //removes screen from hud



while {pFlirActivated} do {
    waitUntil {(_actualStance != stance player) or !pFlirActivated};
    if (!pFlirActivated) exitWith {};
    _actualStance = stance player;
    switch (_actualStance) do {
        case "STAND": {
            BIS_liveFeed attachTo [player,[0,1,1.68]];
            trucPIPtarget attachTo [player,[0,2000,1.68]];
        };
        case "CROUCH": {
            BIS_liveFeed attachTo [player,[0,1,0.85]];
            trucPIPtarget attachTo [player,[0,2000,0.85]];
        };
        case "PRONE": {
            BIS_liveFeed attachTo [player,[0,1,0.25]];
            trucPIPtarget attachTo [player,[0,2000,0.25]];
        };
    };
};