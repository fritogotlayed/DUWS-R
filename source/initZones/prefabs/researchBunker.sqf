_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1806.2046, 5579.3208, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1806.2046, 5579.3208, -1.8119812e-005];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_2 = objNull; if (true) then
{
    _this = createVehicle ["Land_Bunker_F", [1805.3956, 5576.5776, 0.021996662], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 13.848977;
    _this setPos [(1805.3956)-_centerX+_centerSpawnX, (5576.5776)-_centerY+_centerSpawnY, 0.021996662];
};

_vehicle_3 = objNull; if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1810.4695, 5584.5513, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 18.729963;
    _this setPos [(1810.4695)-_centerX+_centerSpawnX, (5584.5513)-_centerY+_centerSpawnY, -1.5258789e-005];
};

_vehicle_5 = objNull; if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1805.3152, 5585.9233, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 11.164474;
    _this setPos [(1805.3152)-_centerX+_centerSpawnX, (5585.9233)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1802.5315, 5577.1045, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 191.12927;
    _this setPos [(1802.5315)-_centerX+_centerSpawnX, (5577.1045)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1808.2894, 5575.6855, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 373.32971;
    _this setPos [(1808.2894)-_centerX+_centerSpawnX, (5575.6855)-_centerY+_centerSpawnY, 3.3378601e-006];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_CargoBox_V1_F", [1804.9158, 5583.3843, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setPos [(1804.9158)-_centerX+_centerSpawnX, (5583.3843)-_centerY+_centerSpawnY, 2.8610229e-006];
};

_vehicle_16 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1809.6719, 5582.0693, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 12.52621;
    _this setPos [(1809.6719)-_centerX+_centerSpawnX, (5582.0693)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_18 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1806.3035, 5582.6162, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 14.263166;
    _this setPos [(1806.3035)-_centerX+_centerSpawnX, (5582.6162)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_21 = objNull;
if (true) then {
    _this = createVehicle ["Land_LampHarbour_F", [1809.1769, 5575.8696], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir -165.60443;
    _this setPos [(1809.1769)-_centerX+_centerSpawnX, (5575.8696)-_centerY+_centerSpawnY];
};

_vehicle_23 = objNull;
if (true) then {
    _this = createVehicle ["Land_LampHarbour_F", [1801.6901, 5577.7622, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir -165.60443;
    _this setPos [(1801.6901)-_centerX+_centerSpawnX, (5577.7622)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_27 = objNull;
if (true) then {
    _this = createVehicle ["Land_Mil_WallBig_4m_F", [1812.0015, 5574.5698, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 106.18203;
    _this setPos [(1812.0015)-_centerX+_centerSpawnX, (5574.5698)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_29 = objNull;
if (true) then {
    _this = createVehicle ["Land_Mil_WallBig_4m_F", [1813.9388, 5580.9131, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 108.10318;
    _this setPos [(1813.9388)-_centerX+_centerSpawnX, (5580.9131)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_40 = objNull;
if (true) then {
    _this = createVehicle ["Land_Mil_WallBig_4m_F", [1800.2032, 5584.2271], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 286.12231;
    _this setPos [(1800.2032)-_centerX+_centerSpawnX, (5584.2271)-_centerY+_centerSpawnY];
};

_vehicle_41 = objNull;
if (true) then {
    _this = createVehicle ["Land_Mil_WallBig_4m_F", [1798.4802, 5578.4126, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 286.12231;
    _this setPos [(1798.4802)-_centerX+_centerSpawnX, (5578.4126)-_centerY+_centerSpawnY, 4.2915344e-006];
};

_vehicle_51 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1814.2393, 5582.7705, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 15.32704;
    _this setPos [(1814.2393)-_centerX+_centerSpawnX, (5582.7705)-_centerY+_centerSpawnY, -4.7683716e-006];
};

_vehicle_52 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1813.2588, 5578.0654, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 101.85902;
    _this setPos [(1813.2588)-_centerX+_centerSpawnX, (5578.0654)-_centerY+_centerSpawnY, 6.6757202e-006];
};

_vehicle_53 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1799.0392, 5581.3403, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir -76.517586;
    _this setPos [(1799.0392)-_centerX+_centerSpawnX, (5581.3403)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_54 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1800.8149, 5574.1284, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 12.319323;
    _this setPos [(1800.8149)-_centerX+_centerSpawnX, (5574.1284)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_56 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1807.3838, 5571.4185, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 12.319323;
    _this setPos [(1807.3838)-_centerX+_centerSpawnX, (5571.4185)-_centerY+_centerSpawnY, -4.7683716e-006];
};