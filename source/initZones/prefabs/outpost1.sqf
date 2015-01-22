_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1806.2113, 5579.3237], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1806.2113, 5579.3237];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1814.3658, 5581.9951, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 450.24924;
    _this setPos [((1814.3658)-_centerX+_centerSpawnX)-_centerX+_centerSpawnX, ((5581.9951)-_centerY+_centerSpawnX)-_centerY+_centerSpawnY, -9.5367432e-007];   // <--  enl�ve
};

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1799.3987, 5574.0063, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 204.33408;
    _this setPos [(1799.3987)-_centerX+_centerSpawnX, (5574.0063)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_8 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1798.3158, 5574.6753, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir -155.16138;
    _this setPos [(1798.3158)-_centerX+_centerSpawnX, (5574.6753)-_centerY+_centerSpawnY, -1.0967255e-005];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1813.8301, 5586.4404, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 10.794906;
    _this setPos [(1813.8301)-_centerX+_centerSpawnX, (5586.4404)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_10 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1803.9083, 5588.5996, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 163.91628;
    _this setPos [(1803.9083)-_centerX+_centerSpawnX, (5588.5996)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_11 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagBunker_Small_F", [1804.8474, 5572.2979, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 21.97064;
    _this setPos [(1804.8474)-_centerX+_centerSpawnX, (5572.2979)-_centerY+_centerSpawnY, -6.6757202e-006];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1805.229, 5587.1973, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 104.44302;
    _this setPos [(1805.229)-_centerX+_centerSpawnX, (5587.1973)-_centerY+_centerSpawnY, -7.1525574e-006];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1802.0155, 5586.9888], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 121.74655;
    _this setPos [(1802.0155)-_centerX+_centerSpawnX, (5586.9888)-_centerY+_centerSpawnY];
};

_vehicle_14 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1811.9556, 5586.8281, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir -166.94203;
    _this setPos [(1811.9556)-_centerX+_centerSpawnX, (5586.8281)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_15 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1813.3966, 5576.8286, -0.0073174387], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 105.21954;
    _this setPos [(1813.3966)-_centerX+_centerSpawnX, (5576.8286)-_centerY+_centerSpawnY, -0.0073174387];
};

_vehicle_16 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1801.6213, 5572.8877, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 22.254;
    _this setPos [(1801.6213)-_centerX+_centerSpawnX, (5572.8877)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_17 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1806.2729, 5588.2007], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 11.899652;
    _this setPos [(1806.2729)-_centerX+_centerSpawnX, (5588.2007)-_centerY+_centerSpawnY];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1797.0896, 5580.9429, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 104.52956;
    _this setPos [(1797.0896)-_centerX+_centerSpawnX, (5580.9429)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_35 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1806.767, 5570.1011, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 5.183486;
    _this setPos [(1806.767)-_centerX+_centerSpawnX, (5570.1011)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_38 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1811.4563, 5572.0298, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 131.70813;
    _this setPos [(1811.4563)-_centerX+_centerSpawnX, (5572.0298)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_40 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1802.4535, 5573.8809, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 8.4296408;
    _this setPos [(1802.4535)-_centerX+_centerSpawnX, (5573.8809)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_42 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1805.345, 5571.2075, -3.0040741e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir -79.369804;
    _this setPos [(1805.345)-_centerX+_centerSpawnX, (5571.2075)-_centerY+_centerSpawnY, -3.0040741e-005];
};

_vehicle_44 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1808.0404, 5586.0098, 1.7642975e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setPos [(1808.0404)-_centerX+_centerSpawnX, (5586.0098)-_centerY+_centerSpawnY, 1.7642975e-005];
};

_vehicle_45 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Grenades_F", [1807.2094, 5586.2754, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 99.49498;
    _this setPos [(1807.2094)-_centerX+_centerSpawnX, (5586.2754)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_46 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoOrd_F", [1808.7644, 5585.3696, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 51.509426;
    _this setPos [(1808.7644)-_centerX+_centerSpawnX, (5585.3696)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_48 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1809.6976, 5585.2422, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 113.27938;
    _this setPos [(1809.6976)-_centerX+_centerSpawnX, (5585.2422)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_51 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1808.9929, 5581.4717, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 13.907078;
    _this setPos [(1808.9929)-_centerX+_centerSpawnX, (5581.4717)-_centerY+_centerSpawnY, -4.2915344e-006];
};

_vehicle_54 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1807.1746, 5581.8901, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 20.570042;
    _this setPos [(1807.1746)-_centerX+_centerSpawnX, (5581.8901)-_centerY+_centerSpawnY, 7.6293945e-006];
};

_vehicle_57 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1805.4349, 5582.7388, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 10.932687;
    _this setPos [(1805.4349)-_centerX+_centerSpawnX, (5582.7388)-_centerY+_centerSpawnY, -6.1988831e-006];
};