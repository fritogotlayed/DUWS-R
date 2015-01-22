_object = _this select 0;

_arrayOfSounds = ["radiochatter2", "radiochatter4"];
_indexNb = (count _arrayOfSounds)-1;

while {alive _object} do {
    _pickedIndex = round random _indexNb;
    _pickedSound = _arrayOfSounds select _pickedIndex;
    _object say3d _pickedSound;
    sleep 240;
};