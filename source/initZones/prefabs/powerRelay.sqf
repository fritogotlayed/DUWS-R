_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1817.7537, 5623.6694, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setDir -0.11539204;
    _this setPos [1817.7537, 5623.6694, 2.8610229e-006];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_36 = objNull;
if (true) then {
    _this = createVehicle ["Land_Communication_F", [1817.9662, 5623.6338, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 12.575704;
    _this setPos [(1817.9662)-_centerX+_centerSpawnX, (5623.6338)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_42 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo_Patrol_V2_F", [1816.4227, 5619.3525, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 14.763124;
    _this setPos [(1816.4227)-_centerX+_centerSpawnX, (5619.3525)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_44 = objNull;
if (true) then {
    _this = createVehicle ["Land_dp_transformer_F", [1819.2301, 5627.6191, 1.335144e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 192.98456;
    _this setPos [(1819.2301)-_centerX+_centerSpawnX, (5627.6191)-_centerY+_centerSpawnY, 1.335144e-005];
};

_vehicle_45 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall4_F", [1819.8464, 5629.9619, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 13.838977;
    _this setPos [(1819.8464)-_centerX+_centerSpawnX, (5629.9619)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_47 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall4_F", [1814.9423, 5628.792, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir -34.979774;
    _this setPos [(1814.9423)-_centerX+_centerSpawnX, (5628.792)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_50 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1822.9854, 5628.7085, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 46.318672;
    _this setPos [(1822.9854)-_centerX+_centerSpawnX, (5628.7085)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_52 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1824.108, 5627.4424, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 42.129707;
    _this setPos [(1824.108)-_centerX+_centerSpawnX, (5627.4424)-_centerY+_centerSpawnY, 2.3841858e-006];
};

_vehicle_55 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1825.0549, 5626.4561, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_55 = _this;
    _this setDir 51.772568;
    _this setPos [(1825.0549)-_centerX+_centerSpawnX, (5626.4561)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_57 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1825.6694, 5624.873, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 94.168327;
    _this setPos [(1825.6694)-_centerX+_centerSpawnX, (5624.873)-_centerY+_centerSpawnY, 9.5367432e-006];
};

_vehicle_58 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1814.8267, 5615.2202, 9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir 13.427785;
    _this setPos [(1814.8267)-_centerX+_centerSpawnX, (5615.2202)-_centerY+_centerSpawnY, 9.059906e-006];
};

_vehicle_59 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1824.389, 5621.8325, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 110.49532;
    _this setPos [(1824.389)-_centerX+_centerSpawnX, (5621.8325)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_61 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1821.9309, 5616.3223, -1.001358e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 123.23259;
    _this setPos [(1821.9309)-_centerX+_centerSpawnX, (5616.3223)-_centerY+_centerSpawnY, -1.001358e-005];
};

_vehicle_64 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1825.309, 5617.6436], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 120.55343;
    _this setPos [(1825.309)-_centerX+_centerSpawnX, (5617.6436)-_centerY+_centerSpawnY];
};

_vehicle_66 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1817.0031, 5629.0449, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setPos [(1817.0031)-_centerX+_centerSpawnX, (5629.0449)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_67 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterTank_F", [1823.8378, 5626.1216, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_67 = _this;
    _this setDir 45.442371;
    _this setPos [(1823.8378)-_centerX+_centerSpawnX, (5626.1216)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_68 = objNull;
if (true) then {
    _this = createVehicle ["Land_BarrelTrash_F", [1816.1584, 5629.0845, 1.4305115e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setPos [(1816.1584)-_centerX+_centerSpawnX, (5629.0845)-_centerY+_centerSpawnY, 1.4305115e-005];
};

_vehicle_69 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo20_grey_F", [1816.2631, 5619.1206, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_69 = _this;
    _this setDir 14.734754;
    _this setPos [(1816.2631)-_centerX+_centerSpawnX, (5619.1206)-_centerY+_centerSpawnY, 6.1988831e-006];
};

_vehicle_74 = objNull;
if (true) then {
    _this = createVehicle ["O_Truck_02_covered_F", [1810.3815, 5620.46], [], 0, "CAN_COLLIDE"];
    _vehicle_74 = _this;
    _this setDir 3.5739508;
    _this setPos [(1810.3815)-_centerX+_centerSpawnX, (5620.46)-_centerY+_centerSpawnY];
};