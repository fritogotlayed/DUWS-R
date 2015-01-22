_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1818.2692, 5623.7881, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1818.2692, 5623.7881, 3.8146973e-006];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_2 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1815.4146, 5616.1377, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 31.845285;
    _this setPos [(1815.4146)-_centerX+_centerSpawnX, (5616.1377)-_centerY+_centerSpawnY, 1.1444092e-005];
};

_vehicle_3 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1809.3617, 5625.8247, 1.0967255e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 110.47974;
    _this setPos [(1809.3617)-_centerX+_centerSpawnX, (5625.8247)-_centerY+_centerSpawnY, 1.0967255e-005];
};

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1817.5797, 5616.0967, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir -12.399847;
    _this setPos [(1817.5797)-_centerX+_centerSpawnX, (5616.0967)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_5 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1810.1499, 5628.041, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir -74.497208;
    _this setPos [(1810.1499)-_centerX+_centerSpawnX, (5628.041)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagBunker_Small_F", [1819.2515, 5629.0195], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 194.41483;
    _this setPos [(1819.2515)-_centerX+_centerSpawnX, (5629.0195)-_centerY+_centerSpawnY];
};

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1822.8787, 5624.0425, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 58.163929;
    _this setPos [(1822.8787)-_centerX+_centerSpawnX, (5624.0425)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_8 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1815.7982, 5628.29, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 10.935677;
    _this setPos [(1815.7982)-_centerX+_centerSpawnX, (5628.29)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_10 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1811.5896, 5628.8838, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir -5.2303257;
    _this setPos [(1811.5896)-_centerX+_centerSpawnX, (5628.8838)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1824.9969, 5619.2573, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 282.43109;
    _this setPos [(1824.9969)-_centerX+_centerSpawnX, (5619.2573)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1823.6379, 5618.0474, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 150.46001;
    _this setPos [(1823.6379)-_centerX+_centerSpawnX, (5618.0474)-_centerY+_centerSpawnY, 4.2915344e-006];
};

_vehicle_15 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1808.5625, 5623.9038, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 201.05779;
    _this setPos [(1808.5625)-_centerX+_centerSpawnX, (5623.9038)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_21 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1817.7382, 5616.1147, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 437.84164;
    _this setPos [(1817.7382)-_centerX+_centerSpawnX, (5616.1147)-_centerY+_centerSpawnY, -7.1525574e-006];
};

_vehicle_23 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1815.2917, 5617.042, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir -21.203318;
    _this setPos [(1815.2917)-_centerX+_centerSpawnX, (5617.042)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_24 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1815.8658, 5616.4819, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 53.339703;
    _this setPos [(1815.8658)-_centerX+_centerSpawnX, (5616.4819)-_centerY+_centerSpawnY, -4.2915344e-006];
};

_vehicle_25 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoOrd_F", [1809.1097, 5624.2051, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 21.457464;
    _this setPos [(1809.1097)-_centerX+_centerSpawnX, (5624.2051)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Grenades_F", [1824.4406, 5619.7393, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setPos [(1824.4406)-_centerX+_centerSpawnX, (5619.7393)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_27 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Support_F", [1824.0854, 5620.4072, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir -55.928699;
    _this setPos [(1824.0854)-_centerX+_centerSpawnX, (5620.4072)-_centerY+_centerSpawnY, 5.7220459e-006];
};

_vehicle_28 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1809.4648, 5622.5674, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 36.291325;
    _this setPos [(1809.4648)-_centerX+_centerSpawnX, (5622.5674)-_centerY+_centerSpawnY, 7.1525574e-006];
};

_vehicle_30 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1820.5704, 5617.5063, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 163.06892;
    _this setPos [(1820.5704)-_centerX+_centerSpawnX, (5617.5063)-_centerY+_centerSpawnY, -7.6293945e-006];
};

_vehicle_33 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1814.3519, 5618.2471, 5.865097e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 19.422501;
    _this setPos [(1814.3519)-_centerX+_centerSpawnX, (5618.2471)-_centerY+_centerSpawnY, 5.865097e-005];
};

_vehicle_34 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1811.573, 5617.8848, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 43.520428;
    _this setPos [(1811.573)-_centerX+_centerSpawnX, (5617.8848)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_42 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1819.1659, 5617.9526, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir -18.228754;
    _this setPos [(1819.1659)-_centerX+_centerSpawnX, (5617.9526)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_45 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1810.3513, 5623.0117, -4.863739e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 34.012459;
    _this setPos [(1810.3513)-_centerX+_centerSpawnX, (5623.0117)-_centerY+_centerSpawnY, -4.863739e-005];
};

_vehicle_49 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1816.2966, 5622.6963, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 209.70903;
    _this setPos [(1816.2966)-_centerX+_centerSpawnX, (5622.6963)-_centerY+_centerSpawnY, 3.3378601e-006];
};

_vehicle_53 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1817.5223, 5622.2725, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 11.815386;
    _this setPos [(1817.5223)-_centerX+_centerSpawnX, (5622.2725)-_centerY+_centerSpawnY, -2.4795532e-005];
};

_vehicle_56 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1818.7307, 5621.6924, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 26.359379;
    _this setPos [(1818.7307)-_centerX+_centerSpawnX, (5621.6924)-_centerY+_centerSpawnY, 6.1988831e-006];
};

_vehicle_59 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1816.9523, 5623.5132, -2.0027161e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 20.989206;
    _this setPos [(1816.9523)-_centerX+_centerSpawnX, (5623.5132)-_centerY+_centerSpawnY, -2.0027161e-005];
};

_vehicle_62 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1815.1464, 5624.3535, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_62 = _this;
    _this setDir 26.988724;
    _this setPos [(1815.1464)-_centerX+_centerSpawnX, (5624.3535)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_73 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1818.7716, 5622.71, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_73 = _this;
    _this setDir 28.698681;
    _this setPos [(1818.7716)-_centerX+_centerSpawnX, (5622.71)-_centerY+_centerSpawnY, 6.6757202e-006];
};

_vehicle_76 = objNull;
if (true) then {
    _this = createVehicle ["Land_ChairPlastic_F", [1818.3416, 5623.4814, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_76 = _this;
    _this setDir -84.291656;
    _this setPos [(1818.3416)-_centerX+_centerSpawnX, (5623.4814)-_centerY+_centerSpawnY, -5.2452087e-006];
};

_vehicle_78 = objNull;
if (true) then {
    _this = createVehicle ["Land_ChairPlastic_F", [1819.0468, 5623.0957], [], 0, "CAN_COLLIDE"];
    _vehicle_78 = _this;
    _this setDir -60.391239;
    _this setPos [(1819.0468)-_centerX+_centerSpawnX, (5623.0957)-_centerY+_centerSpawnY];
};

_vehicle_80 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bench_F", [1816.8027, 5624.1938, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_80 = _this;
    _this setDir 112.94139;
    _this setPos [(1816.8027)-_centerX+_centerSpawnX, (5624.1938)-_centerY+_centerSpawnY, -1.0490417e-005];
};

_vehicle_82 = objNull;
if (true) then {
    _this = createVehicle ["Land_ChairPlastic_F", [1817.4524, 5618.0425, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_82 = _this;
    _this setDir 128.8213;
    _this setPos [(1817.4524)-_centerX+_centerSpawnX, (5618.0425)-_centerY+_centerSpawnY, -8.5830688e-006];
};

_vehicle_84 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1815.0295, 5625.1299, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_84 = _this;
    _this setPos [(1815.0295)-_centerX+_centerSpawnX, (5625.1299)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_85 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterTank_F", [1820.0995, 5621.5317, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_85 = _this;
    _this setDir 114.82065;
    _this setPos [(1820.0995)-_centerX+_centerSpawnX, (5621.5317)-_centerY+_centerSpawnY, 1.9073486e-006];
};