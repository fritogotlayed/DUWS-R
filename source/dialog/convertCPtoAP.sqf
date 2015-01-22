if (commandpointsblu1 < 10) exitWith {hint "You don't have enough CP to convert into AP";};

commandpointsblu1 = commandpointsblu1 - 10;
WARCOM_blufor_ap = WARCOM_blufor_ap + 15;

ctrlSetText [1000, format["%1",commandpointsblu1]];
ctrlSetText [1002, format["%1",WARCOM_blufor_ap]];

publicVariable "commandpointsblu1";
publicVariable "WARCOM_blufor_ap";

hint "Conversion successful";