_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1806.2415, 5579.3252, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1806.2415, 5579.3252, 7.1525574e-006];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo_House_V1_F", [1804.4143, 5580.2451, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir -74.555626;
    _this setPos [(1804.4143)-_centerX+_centerSpawnX, (5580.2451)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_5 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1800.9731, 5583.5952, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 104.74966;
    _this setPos [(1800.9731)-_centerX+_centerSpawnX, (5583.5952)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1804.0116, 5584.3237], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 15.887181;
    _this setPos [(1804.0116)-_centerX+_centerSpawnX, (5584.3237)-_centerY+_centerSpawnY];
};

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1802.5055, 5584.3677], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 103.43684;
    _this setPos [(1802.5055)-_centerX+_centerSpawnX, (5584.3677)-_centerY+_centerSpawnY];
};

_vehicle_10 = objNull;
if (true) then {
    _this = createVehicle ["Land_FieldToilet_F", [1801.1908, 5577.6382, 4.8160553e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 15.579242;
    _this setPos [(1801.1908)-_centerX+_centerSpawnX, (5577.6382)-_centerY+_centerSpawnY, 4.8160553e-005];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_CanisterPlastic_F", [1805.8922, 5579.2271, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 138.44656;
    _this setPos [(1805.8922)-_centerX+_centerSpawnX, (5579.2271)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_14 = objNull;
if (true) then {
    _this = createVehicle ["Land_CanisterPlastic_F", [1805.7119, 5578.7715, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 192.66754;
    _this setPos [(1805.7119)-_centerX+_centerSpawnX, (5578.7715)-_centerY+_centerSpawnY, -4.7683716e-006];
};

_vehicle_17 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bench_F", [1807.546, 5582.479, 8.1062317e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 14.868196;
    _this setPos [(1807.546)-_centerX+_centerSpawnX, (5582.479)-_centerY+_centerSpawnY, 8.1062317e-006];
};

_vehicle_18 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo20_grey_F", [1810.0021, 5575.4038, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir -58.978878;
    _this setPos [(1810.0021)-_centerX+_centerSpawnX, (5575.4038)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_19 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1805.7354, 5577.9644, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setPos [(1805.7354)-_centerX+_centerSpawnX, (5577.9644)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_20 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterTank_F", [1812.0067, 5578.6133, 1.4305115e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 30.685469;
    _this setPos [(1812.0067)-_centerX+_centerSpawnX, (5578.6133)-_centerY+_centerSpawnY, 1.4305115e-005];
};

_vehicle_23 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1810.3329, 5585.1826, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 16.498718;
    _this setPos [(1810.3329)-_centerX+_centerSpawnX, (5585.1826)-_centerY+_centerSpawnY, -1.0490417e-005];
};

_vehicle_24 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1802.1107, 5573.9063, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 15.332597;
    _this setPos [(1802.1107)-_centerX+_centerSpawnX, (5573.9063)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_25 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1812.1504, 5584.6167, 2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 11.828997;
    _this setPos [(1812.1504)-_centerX+_centerSpawnX, (5584.6167)-_centerY+_centerSpawnY, 2.3841858e-006];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1808.4972, 5586.0986, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setPos [(1808.4972)-_centerX+_centerSpawnX, (5586.0986)-_centerY+_centerSpawnY, -7.6293945e-006];
};