_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1817.7059, 5623.6665], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1817.7059, 5623.6665];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [1817.0801, 5622.3252, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 16.65279;
    _this setPos [(1817.0801)-_centerX+_centerSpawnX, (5622.3252)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_CratesWooden_F", [1819.3824, 5623.9609, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir -81.206879;
    _this setPos [(1819.3824)-_centerX+_centerSpawnX, (5623.9609)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_11 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1817.1426, 5630.3096, -2.4318695e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 15.405654;
    _this setPos [(1817.1426)-_centerX+_centerSpawnX, (5630.3096)-_centerY+_centerSpawnY, -2.4318695e-005];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1811.983, 5628.4722, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir -36.872978;
    _this setPos [(1811.983)-_centerX+_centerSpawnX, (5628.4722)-_centerY+_centerSpawnY, -1.0490417e-005];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1818.0186, 5625.6196, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 76.361732;
    _this setPos [(1818.0186)-_centerX+_centerSpawnX, (5625.6196)-_centerY+_centerSpawnY, 2.3841858e-006];
};

_vehicle_16 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1816.3394, 5622.4868, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 106.36842;
    _this setPos [(1816.3394)-_centerX+_centerSpawnX, (5622.4868)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_17 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1814.2449, 5622.9888, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 193.89964;
    _this setPos [(1814.2449)-_centerX+_centerSpawnX, (5622.9888)-_centerY+_centerSpawnY, 4.2915344e-006];
};

_vehicle_18 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1810.1493, 5627.5894, 2.8610229e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 106.26665;
    _this setPos [(1810.1493)-_centerX+_centerSpawnX, (5627.5894)-_centerY+_centerSpawnY, 2.8610229e-005];
};

_vehicle_20 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1815.4996, 5618.27, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 17.155518;
    _this setPos [(1815.4996)-_centerX+_centerSpawnX, (5618.27)-_centerY+_centerSpawnY, -4.7683716e-006];
};

_vehicle_24 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1818.9324, 5616.5508, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 19.506968;
    _this setPos [(1818.9324)-_centerX+_centerSpawnX, (5616.5508)-_centerY+_centerSpawnY, -6.6757202e-006];
};

_vehicle_25 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1821.0811, 5616.7935, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir -48.300835;
    _this setPos [(1821.0811)-_centerX+_centerSpawnX, (5616.7935)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1822.9111, 5622.4263, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir -72.105537;
    _this setPos [(1822.9111)-_centerX+_centerSpawnX, (5622.4263)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_28 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1815.88, 5623.1592, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setPos [(1815.88)-_centerX+_centerSpawnX, (5623.1592)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_29 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Grenades_F", [1814.5321, 5623.4312, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 108.02551;
    _this setPos [(1814.5321)-_centerX+_centerSpawnX, (5623.4312)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_37 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1813.9424, 5618.1475, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 16.913923;
    _this setPos [(1813.9424)-_centerX+_centerSpawnX, (5618.1475)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_40 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1812.0125, 5623.5044, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 193.22357;
    _this setPos [(1812.0125)-_centerX+_centerSpawnX, (5623.5044)-_centerY+_centerSpawnY, 2.8610229e-006];
};

_vehicle_43 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1815.2489, 5631.6279, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 20.291838;
    _this setPos [(1815.2489)-_centerX+_centerSpawnX, (5631.6279)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_46 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1823.0931, 5629.2773, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 372.87582;
    _this setPos [(1823.0931)-_centerX+_centerSpawnX, (5629.2773)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_49 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1824.793, 5628.8843, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 11.736042;
    _this setPos [(1824.793)-_centerX+_centerSpawnX, (5628.8843)-_centerY+_centerSpawnY, 4.7683716e-007];
};