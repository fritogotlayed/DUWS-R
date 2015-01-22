/*
NAME: get_loadout.sqf
URL: https://github.com/aeroson/a3-loadout
VERSION: 3.3
*/
private ["_target","_options","_saveMagsAmmo","_onFoot","_currentWeapon","_currentMode","_isFlashlightOn","_isIRLaserOn","_loadedMagazines","_saveWeapon","_getMagsAmmo","_magazinesName","_magazinesAmmo","_backPackItems","_assignedItems","_data"];

_options = [];

// addAction support
if(count _this < 4) then {
    #define PARAM_START private ["_PARAM_INDEX"]; _PARAM_INDEX=0;
    #define PARAM_REQ(A) if (count _this <= _PARAM_INDEX) exitWith { systemChat format["required param '%1' not supplied in file:'%2' at line:%3", #A ,__FILE__,__LINE__]; }; A = _this select _PARAM_INDEX; _PARAM_INDEX=_PARAM_INDEX+1;
    #define PARAM(A,B) A = B; if (count _this > _PARAM_INDEX) then { A = _this select _PARAM_INDEX; }; _PARAM_INDEX=_PARAM_INDEX+1;
    PARAM_START
    PARAM_REQ(_target)
    PARAM(_options,[])
} else {
    _target = player;
};

_saveMagsAmmo = "ammo" in _options;
_onFoot = vehicle _target == _target;

_currentWeapon = "";
_currentMode = "";
_isFlashlightOn = false;
_isIRLaserOn = false;

// save weapon mode and muzzle
if(_onFoot) then {
    _currentWeapon = currentMuzzle _target;
    _currentMode = currentWeaponMode _target;
    _isFlashlightOn = _target isFlashlightOn _currentWeapon;
    _isIRLaserOn = _target isIRLaserOn _currentWeapon;
} else {
    _currentWeapon = currentWeapon _target;
};

// save loaded magazines /+ loaded magazines ammo count	
_loadedMagazines = [];

// universal weapon saving
_saveWeapon = {
    private ["_weapon","_magazines","_magazine","_muzzles"];
    _weapon = _this select 0;
    _magazines = [];
    if(_weapon != "") then {
        _target selectWeapon _weapon;
        _magazine = currentMagazine _target;
        if(_saveMagsAmmo && _onFoot) then {
            _magazine = [_magazine, _target ammo _weapon];
        };
        _magazines = [_magazine];
        _muzzles = configFile>>"CfgWeapons">>_weapon>>"muzzles";
        if(isArray(_muzzles)) then {
            { // add one mag for each muzzle
                if (_x != "this") then {
                    _target selectWeapon _x;
                    _magazine = currentMagazine _target;
                    if(_saveMagsAmmo) then {
                        _magazine = [_magazine, _target ammo _x];
                    };
                    _magazines set [count _magazines, _magazine];
                };
            } forEach getArray(_muzzles);
        };
    };
    _loadedMagazines set [count _loadedMagazines, _magazines];
};

[primaryWeapon _target] call _saveWeapon;
[handgunWeapon _target] call _saveWeapon;
[secondaryWeapon _target] call _saveWeapon;

_getMagsAmmo = { // default function with _saveMagsAmmo == false
    _this select 0;
};

if(_saveMagsAmmo) then {
    // fill following 2 arrays with magazine name and current ammo in it
    _magazinesName = [];
    _magazinesAmmo = [];
    {
        private ["_name","_ammo","_ammoCountIndex","_ammoCurrent","_ammoFull","_readingAmmoFull"];
        scopeName "a";
        _name = [];
        _ammoCurrent = [];
        _ammoFull = [];
        _readingAmmoFull = false;
        _x = toArray _x;
        _ammoCountIndex = count _x - 1;
        while { _ammoCountIndex>0 && (_x select _ammoCountIndex)!=40 } do {
            _ammoCountIndex = _ammoCountIndex - 1;
        };
        {
            if(_forEachIndex != _ammoCountIndex) then {
                if(_forEachIndex < _ammoCountIndex) then {
                    _name set [count _name, _x];
                } else {
                    if(_x==47) then {
                        _readingAmmoFull = true;
                    } else {
                        if(!_readingAmmoFull) then {
                            _ammoCurrent set [count _ammoCurrent, _x];
                        } else {
                            if(_x==41) then {
                                breakTo "a";
                            } else {
                                _ammoFull set [count _ammoFull, _x];
                            };
                        };
                    };
                };
            };
        } forEach _x;
        if !([_ammoCurrent,_ammoFull] call BIS_fnc_areEqual) then {
            _magazinesName set [count _magazinesName, toString(_name)];
            _magazinesAmmo set [count _magazinesAmmo, parseNumber(toString(_ammoCurrent))];
        };
    } forEach magazinesDetail player;

    // check if input array contains magazine, if it does, find it in magazinesDetail and change _x to [_x, ammo count]
    _getMagsAmmo = {
        private ["_items","_index"];
        _items = _this select 0;
        {
            _name = getText(configFile >> "cfgMagazines" >> _x >> "displayName");
            if(_name!="") then {
                _index = _magazinesName find _name;
                if(_index != -1) then {
                    _items set [_forEachIndex, [_x, _magazinesAmmo select _index]];
                    _magazinesName set [_index, -1];
                    _magazinesAmmo set [_index, -1];
                    _magazinesName = _magazinesName - [-1];
                    _magazinesAmmo = _magazinesAmmo - [-1];
                };
            }
        } forEach _items;
        _items;
    };

};

// get backpack items
_cargo = getbackpackcargo (unitbackpack _target);
_backpacks = [];
{
    for "_i" from 1 to ((_cargo select 1) select _foreachindex) do {
        _backpacks set [count _backpacks, _x];
    };
} foreach (_cargo select 0);	
_backPackItems = (backpackitems _target) + _backpacks;

// get assigned items
_assignedItems = assignedItems _target;
_headgear = headgear _target;
_goggles = goggles _target;
if((_headgear != "") && !(_headgear in _assignedItems)) then {
    _assignedItems set [count _assignedItems, _headgear];
};
if((_goggles != "") && !(_goggles in _assignedItems)) then {
    _assignedItems set [count _assignedItems, _goggles];
};

// get magazines of all assigned items
_magazines = [];
{
    _target selectWeapon _x;
    if(currentWeapon _target==_x) then {
        _magazine = currentMagazine _target;
        if(_magazine != "") then {
            _magazines set[count _magazines, _magazine];
        };
    };
} forEach _assignedItems;
_loadedMagazines set [3, _magazines];

// select back originaly selected weapon and mode
if(vehicle _target == _target) then {
    if(_currentWeapon != "" && _currentMode != "") then {
        _muzzles = 0;
        while{ (_currentWeapon != currentMuzzle _target || _currentMode != currentWeaponMode _target ) && _muzzles < 200 } do {
            _target action ["SWITCHWEAPON", _target, _target, _muzzles];
            _muzzles = _muzzles + 1;
        };
        if(_isFlashlightOn) then {
            _target action ["GunLightOn"];
        } else {
            _target action ["GunLightOff"];
        };
        if(_isIRLaserOn) then {
            _target action ["IRLaserOn"];
        } else {
            _target action ["IRLaserOff"];
        };
    };
} else {
    _currentMode = "";
};
if(_currentMode == "") then {
    if(_currentWeapon=="") then {
        _target action ["SWITCHWEAPON", _target, _target, 0];
    } else {
        _target selectWeapon _currentWeapon;
    };
};

_data = [
    _assignedItems, //0

    primaryWeapon _target, //1
    primaryWeaponItems _target, //2

    handgunWeapon _target, //3
    handgunItems _target, //4

    secondaryWeapon _target, //5
    secondaryWeaponItems _target, //6

    uniform _target, //7
    [uniformItems _target] call _getMagsAmmo, //8

    vest _target, //9
    [vestItems _target] call _getMagsAmmo, //10

    backpack _target, //11
    [_backPackItems] call _getMagsAmmo, //12

    _loadedMagazines, //13 (optional)
    _currentWeapon, //14 (optional)
    _currentMode //15 (optional)
];

// addAction support
if(count _this < 4) then {
    _data;
} else {  
    loadout = _data;
    //playSound3D ["A3\Sounds_F\sfx\ZoomOut.wav", _target];
};