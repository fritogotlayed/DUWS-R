//  _trg = ["Outpost Airbase",5,50,this,true] execvm "createzone.sqf";
//         Name of the place,pts,radius,this,fortified/not

_place   =   _this select 0; 
_points =   _this select 1;
_size = _this select 2;
_trigger = _this select 3;
_fortified = _this select 4;

// hint format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)];
// hint format["%1",_points];

// CREATE MARKER (ICON)
_markername = format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)]; // Define marker name
//hint _markername;
_markerstr = createMarker [str(_markername), getpos _trigger];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "hd_objective";
str(_markername) setMarkerColor "ColorRed";
str(_markername) setMarkerText _place;
str(_markername) setMarkerSize [0, 0];

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipse",round(getpos _trigger select 0),round(getpos _trigger select 1)]; // Define marker name
//hint _markername2;
_markerstr2 = createMarker [str(_markername2), getpos _trigger];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorRed";
str(_markername2) setMarkerSize [_size, _size];
str(_markername2) setMarkerAlpha 0.1;

// hint str(_markername);

//_markerstr = createMarker [format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)], getpos _trigger];
//_markerstr setMarkerShape "ICON";
//format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)] setMarkerType "hd_objective";
//format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)] setMarkerColor "ColorRed";
//format["%1%2",round(getpos _trigger select 0),round(getpos _trigger select 1)] setMarkerText _place;

// hint format["%1",_place];
// hint format ["%1",parsenumber format["%1",_points]];

// CREATE ZONE CAPTURABLE TRIGGER
_trg=createTrigger["EmptyDetector",getPos _trigger];
_trg setTriggerArea[_size,_size,0,false];
_trg setTriggerActivation["WEST SEIZED","PRESENT",false];
_trg setTriggerStatements["this", format["[""%1"",%2,""%3"",""%4""] execvm 'captured.sqf'",_place,_points,_markername,_markername2], ""];
_trg setTriggerTimeout [30, 60, 300, true ]; 

// hint format["""%1"",%2",_place,_points];

// CREATE ZONE NOTIFICATION TRIGGER
_trg2=createTrigger["EmptyDetector",getPos _trigger];
_trg2 triggerAttachVehicle [player1];
_trg2 setTriggerArea[_size,_size,0,false];
_trg2 setTriggerActivation["VEHICLE","PRESENT",true];
_trg2 setTriggerStatements["this", format["[""%1"",thislist] execvm 'enterlocation.sqf'",_place], ""];

// CREATE OPFOR. HEAVY CLUSTERFUCK INCOMING.
// Check if fortified is true
if (_fortified) then {
    [getpos _trigger] execvm "createopfortified.sqf";
    sleep 2;
};

// Check if radius is 100m or smaller => create 2 patrols then exit the script
if (_size < 101) exitWith {
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
    sleep (random 3);
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
};

// Check if radius is 250m-100m => create 2 patrols and 1 fireteam then exit the script
if (_size < 251) exitWith {
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
    sleep (random 3);
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
    sleep 2+(random 3);
    [getpos _trigger, _size] execvm "createopteam.sqf";
};

// Check if radius is 250m-500m => create 2 patrols and 2 fireteams then exit the script
if (_size < 501) exitWith {
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
    sleep (random 3);
    [getpos _trigger, _size] execvm "createoppatrol.sqf";
    sleep 2+(random 3);
    [getpos _trigger, _size] execvm "createopteam.sqf";
    sleep 3;
    [getpos _trigger, _size] execvm "createopteam.sqf";
};

// if superior to 500m: 3 ft 3 patrols
[getpos _trigger, _size] execvm "createoppatrol.sqf";
sleep (random 3);
[getpos _trigger, _size] execvm "createoppatrol.sqf";
sleep 2+(random 3);
[getpos _trigger, _size] execvm "createoppatrol.sqf";
sleep 2+(random 3);
[getpos _trigger, _size] execvm "createopteam.sqf";
sleep 3;
[getpos _trigger, _size] execvm "createopteam.sqf";
sleep 3;
[getpos _trigger, _size] execvm "createopteam.sqf";