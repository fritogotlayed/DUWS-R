_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1817.7195, 5623.689, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1817.7195, 5623.689, -1.2397766e-005];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_1 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo_HQ_V2_F", [1818.382, 5624.3564, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 16.173525;
    _this setPos [(1818.382)-_centerX+_centerSpawnX, (5624.3564)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_2 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1811.2635, 5621.4463, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 106.22929;
    _this setPos [(1811.2635)-_centerX+_centerSpawnX, (5621.4463)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_3 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1811.7753, 5617.7754, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 17.772383;
    _this setPos [(1811.7753)-_centerX+_centerSpawnX, (5617.7754)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1826.0121, 5622.8223, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 109.19431;
    _this setPos [(1826.0121)-_centerX+_centerSpawnX, (5622.8223)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1818.0166, 5617.2568, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 16.170671;
    _this setPos [(1818.0166)-_centerX+_centerSpawnX, (5617.2568)-_centerY+_centerSpawnY, -7.6293945e-006];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1826.0255, 5629.1235, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 196.55594;
    _this setPos [(1826.0255)-_centerX+_centerSpawnX, (5629.1235)-_centerY+_centerSpawnY, -5.7220459e-006];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1813.771, 5629.9653, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 106.22929;
    _this setPos [(1813.771)-_centerX+_centerSpawnX, (5629.9653)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_16 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1827.408, 5628.5742, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 99.777275;
    _this setPos [(1827.408)-_centerX+_centerSpawnX, (5628.5742)-_centerY+_centerSpawnY, 3.3378601e-006];
};

_vehicle_19 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1824.6447, 5617.9897, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 106.8838;
    _this setPos [(1824.6447)-_centerX+_centerSpawnX, (5617.9897)-_centerY+_centerSpawnY, 5.2452087e-006];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1825.6771, 5621.7358, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 105.16212;
    _this setPos [(1825.6771)-_centerX+_centerSpawnX, (5621.7358)-_centerY+_centerSpawnY, 2.8610229e-006];
};

_vehicle_29 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1827.2349, 5623.9165, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 193.59006;
    _this setPos [(1827.2349)-_centerX+_centerSpawnX, (5623.9165)-_centerY+_centerSpawnY, 1.4305115e-006];
};