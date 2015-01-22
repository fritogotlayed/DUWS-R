_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1817.6874, 5623.6938], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setPos [1817.6874, 5623.6938];
};

_centerObj = getpos _vehicle_6;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_6;

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_TTowerBig_2_F", [1817.7905, 5623.6133, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 19.368921;
    _this setPos [(1817.7905)-_centerX+_centerSpawnX, (5623.6133)-_centerY+_centerSpawnY, -4.2915344e-006];
};

_vehicle_8 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1822.7618, 5616.5508, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 100.93914;
    _this setPos [(1822.7618)-_centerX+_centerSpawnX, (5616.5508)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1823.0533, 5618.2686, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir -78.043922;
    _this setPos [(1823.0533)-_centerX+_centerSpawnX, (5618.2686)-_centerY+_centerSpawnY, -5.7220459e-006];
};

_vehicle_10 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1824.3372, 5627.3643, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir -120.68147;
    _this setPos [(1824.3372)-_centerX+_centerSpawnX, (5627.3643)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1816.9067, 5630.0625, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir -16.658617;
    _this setPos [(1816.9067)-_centerX+_centerSpawnX, (5630.0625)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1813.9901, 5622.8501, 4.1007996e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir -69.173584;
    _this setPos [(1813.9901)-_centerX+_centerSpawnX, (5622.8501)-_centerY+_centerSpawnY, 4.1007996e-005];
};

_vehicle_15 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1816.8394, 5620.2705], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir -157.85757;
    _this setPos [(1816.8394)-_centerX+_centerSpawnX, (5620.2705)-_centerY+_centerSpawnY];
};

_vehicle_17 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1813.303, 5616.5029, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 14.733194;
    _this setPos [(1813.303)-_centerX+_centerSpawnX, (5616.5029)-_centerY+_centerSpawnY, -9.5367432e-006];
};

_vehicle_20 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1822.9664, 5620.3501, -5.7697296e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir -74.490959;
    _this setPos [(1822.9664)-_centerX+_centerSpawnX, (5620.3501)-_centerY+_centerSpawnY, -5.7697296e-005];
};

_vehicle_23 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1809.0989, 5617.9941, 9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 41.088562;
    _this setPos [(1809.0989)-_centerX+_centerSpawnX, (5617.9941)-_centerY+_centerSpawnY, 9.059906e-006];
};

_vehicle_28 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1808.8984, 5620.1069, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir -74.244614;
    _this setPos [(1808.8984)-_centerX+_centerSpawnX, (5620.1069)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_34 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1810.4701, 5625.0835, 9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir -71.33213;
    _this setPos [(1810.4701)-_centerX+_centerSpawnX, (5625.0835)-_centerY+_centerSpawnY, 9.059906e-006];
};

_vehicle_37 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1811.4219, 5628.9116, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir -19.023331;
    _this setPos [(1811.4219)-_centerX+_centerSpawnX, (5628.9116)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_40 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1821.7711, 5628.6357, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir -160.21716;
    _this setPos [(1821.7711)-_centerX+_centerSpawnX, (5628.6357)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_43 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1818.8651, 5614.4976, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 10.131538;
    _this setPos [(1818.8651)-_centerX+_centerSpawnX, (5614.4976)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_46 = objNull;
if (true) then {
    _this = createVehicle ["Land_CratesWooden_F", [1816.1002, 5622.4473, -9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 25.01968;
    _this setPos [(1816.1002)-_centerX+_centerSpawnX, (5622.4473)-_centerY+_centerSpawnY, -9.059906e-006];
};

_vehicle_50 = objNull;
if (true) then {
    _this = createVehicle ["Land_CratesWooden_F", [1822.2284, 5618.5342, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 104.69477;
    _this setPos [(1822.2284)-_centerX+_centerSpawnX, (5618.5342)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_58 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1818.6785, 5630.4287, -1.001358e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir -10.315996;
    _this setPos [(1818.6785)-_centerX+_centerSpawnX, (5630.4287)-_centerY+_centerSpawnY, -1.001358e-005];
};

_vehicle_61 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1809.6741, 5622.7778, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 109.46542;
    _this setPos [(1809.6741)-_centerX+_centerSpawnX, (5622.7778)-_centerY+_centerSpawnY, -3.8146973e-006];
};