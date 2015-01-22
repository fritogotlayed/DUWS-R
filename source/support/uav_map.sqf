_centerPos = _this select 0;
_checkedRadius = _this select 1;

commandpointsblu1 = commandpointsblu1 - 3;
publicVariable "commandpointsblu1";

// CREATE MARKER FOR CHECKED SIZE
_markername = format["%1%2vc",round(_centerPos select 0),round(_centerPos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _centerPos];
_markerstr setMarkerShape "ELLIPSE";
str(_markername) setMarkerBrush "SolidBorder";
str(_markername) setMarkerColor "ColorWhite";
str(_markername) setMarkerSize [_checkedRadius, _checkedRadius];
str(_markername) setMarkerAlpha 0.5;

PAPABEAR SideChat "The UAV has been sent at the designated coordinates, please standby for further intel.";
sleep 20;
PAPABEAR SideChat "Collecting data from the UAV...";
sleep 7;
PAPABEAR SideChat "We've sent the last known location of the enemy to your map. The UAV is returning to the base";

/////////////////// THIS PART IS EAST /////
// CREATE TRIGGER
_trg=createTrigger["EmptyDetector",_centerPos];
_trg setTriggerArea[_checkedRadius,_checkedRadius,0,false];
_trg setTriggerActivation["EAST","PRESENT",false];
_trg setTriggerStatements["this","", ""];
_trg setTriggerTimeout [0, 0, 0, true ];  
sleep 1;
_tlist = list _trg; 

{  // -- BEGIN FOREACH LOOP
    // CREATE MARKER
    _markername2 = format["%1%2uav",round(getpos _x select 0),round(getpos _x select 1)]; // Define marker name
    _markerstr2 = createMarker [str(_markername2), getpos _x];
    _markerstr2 setMarkerShape "ELLIPSE";
    str(_markername2) setMarkerBrush "SolidBorder";
    str(_markername2) setMarkerColor "ColorRed";
    str(_markername2) setMarkerSize [3, 3];
    str(_markername2) setMarkerAlpha 1;

    // BEGIN FLASHING LOOP
    [_markername2] spawn {
        _markername2 = _this select 0;
        for [{_i=0}, {_i<=300}, {_i = _i+1}] do {
            sleep 0.5;
            str(_markername2) setMarkerColor "ColorPink";
            sleep 0.5;
            str(_markername2) setMarkerColor "ColorRed";
        };
        deleteMarker str(_markername2);
    };
} forEach _tlist; // -- END FOREACH LOOP
/////////////////// END OF EAST PART /////

/////////////////// THIS PART IS WEST /////
// CREATE TRIGGER
_trgwest=createTrigger["EmptyDetector",_centerPos];
_trgwest setTriggerArea[_checkedRadius,_checkedRadius,0,false];
_trgwest setTriggerActivation["WEST","PRESENT",false];
_trgwest setTriggerStatements["this","", ""];
_trgwest setTriggerTimeout [0, 0, 0, true ];  
sleep 1;
_tlistwest = list _trgwest; 

{  // -- BEGIN FOREACH LOOP
    // CREATE MARKER
    _markername2 = format["%1%2uavw",round(getpos _x select 0),round(getpos _x select 1)]; // Define marker name
    _markerstr2 = createMarker [str(_markername2), getpos _x];
    _markerstr2 setMarkerShape "ELLIPSE";
    str(_markername2) setMarkerBrush "SolidBorder";
    str(_markername2) setMarkerColor "ColorBlue";
    str(_markername2) setMarkerSize [3, 3];
    str(_markername2) setMarkerAlpha 1;

    // BEGIN FLASHING LOOP
    [_markername2] spawn {
        _markername2 = _this select 0;
        for [{_i=0}, {_i<=300}, {_i = _i+1}] do {
            sleep 0.5;
            str(_markername2) setMarkerColor "ColorBlue";
            sleep 0.5;
            str(_markername2) setMarkerColor "ColorBLUFOR";
        };    // FOR BRACKET
            deleteMarker str(_markername2);
    };
} forEach _tlistwest; // -- END FOREACH LOOP
/////////////////// END OF WEST PART /////

// WAIT AND EXIT
sleep 300;
deleteMarker str(_markername);
deletevehicle _trg;
deletevehicle _trgwest;