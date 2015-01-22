sleep 10;
_fobAmount = count Array_of_FOBS;
_fobIndex = _fobAmount - 1;
_createdFOB = Array_of_FOBS select _fobIndex;

//hint format["fobIndex: %1\ncreatedFOB: %2\nArray: %3",_fobIndex,_createdFOB,Array_of_FOBS];
[_createdFOB] execVM "support\FOBactions.sqf";