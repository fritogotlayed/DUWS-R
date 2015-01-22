DUWS_dynmusic_firednear_list = ["BackgroundTrack02_F","BackgroundTrack03_F","EventTrack03_F_EPA","LeadTrack03_F","LeadTrack04_F"];

DUWS_dynmusic_firednear = {
    player removeEventHandler ["FiredNear", dynamic_music_EH_firednear];

    // check if opfor is near
    _trg=createTrigger["EmptyDetector",getpos player];
    _trg setTriggerArea[150,150,0,false];
    _trg setTriggerActivation["EAST","PRESENT",false];
    _trg setTriggerStatements["this", "", ""];
    sleep 1;
    _enemypresent = triggeractivated _trg;
    deleteVehicle _trg;

    if (!_enemypresent) then {
        player addEventHandler ["FiredNear", {[] spawn DUWS_dynmusic_firednear}];
    } else {
        _random_music = DUWS_dynmusic_firednear_list call BIS_fnc_selectRandom;
        playmusic _random_music;

        sleep 300;
        player addEventHandler ["FiredNear", {[] spawn DUWS_dynmusic_firednear}];
    };
};