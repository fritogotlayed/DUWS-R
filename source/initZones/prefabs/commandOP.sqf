_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1806.2205, 5579.3296, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1806.2205, 5579.3296, 1.0490417e-005];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1816.0973, 5586.7734, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 4.8903742;
    _this setPos [(1816.0973)-_centerX+_centerSpawnX, (5586.7734)-_centerY+_centerSpawnY, -1.2397766e-005];
};

_vehicle_5 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1806.6445, 5583.8438, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 182.31691;
    _this setPos [(1806.6445)-_centerX+_centerSpawnX, (5583.8438)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_6 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1812.3308, 5587.5283, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 371.54681;
    _this setPos [(1812.3308)-_centerX+_centerSpawnX, (5587.5283)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_8 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1798.8376, 5589.2822, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 149.31981;
    _this setPos [(1798.8376)-_centerX+_centerSpawnX, (5589.2822)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1815.9575, 5585.1753, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 88.914955;
    _this setPos [(1815.9575)-_centerX+_centerSpawnX, (5585.1753)-_centerY+_centerSpawnY, 4.7683716e-006];
};

_vehicle_14 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1804.6646, 5588.665, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 7.9117637;
    _this setPos [(1804.6646)-_centerX+_centerSpawnX, (5588.665)-_centerY+_centerSpawnY, 1.1444092e-005];
};

_vehicle_15 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1798.1958, 5584.4712, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 102.86076;
    _this setPos [(1798.1958)-_centerX+_centerSpawnX, (5584.4712)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_16 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1815.8428, 5579.8276, -3.2901764e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir -2.6501598;
    _this setPos [(1815.8428)-_centerX+_centerSpawnX, (5579.8276)-_centerY+_centerSpawnY, -3.2901764e-005];
};

_vehicle_18 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1815.6222, 5583.4546, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setPos [(1815.6222)-_centerX+_centerSpawnX, (5583.4546)-_centerY+_centerSpawnY, -1.7166138e-005];
};

_vehicle_26 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1801.5006, 5589.2012, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 364.04932;
    _this setPos [(1801.5006)-_centerX+_centerSpawnX, (5589.2012)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_46 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1804.1118, 5583.3501, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 105.47302;
    _this setPos [(1804.1118)-_centerX+_centerSpawnX, (5583.3501)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_56 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1814.7604, 5576.2295, 3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir -66.201477;
    _this setPos [(1814.7604)-_centerX+_centerSpawnX, (5576.2295)-_centerY+_centerSpawnY, 3.3378601e-006];
};

_vehicle_59 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1801.0555, 5571.1372, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 20.165812;
    _this setPos [(1801.0555)-_centerX+_centerSpawnX, (5571.1372)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_64 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1803.3549, 5584.2397, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 283.57803;
    _this setPos [(1803.3549)-_centerX+_centerSpawnX, (5584.2397)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_65 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1813.8107, 5573.9585, 1.2874603e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 187.34819;
    _this setPos [(1813.8107)-_centerX+_centerSpawnX, (5573.9585)-_centerY+_centerSpawnY, 1.2874603e-005];
};

_vehicle_66 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1797.9503, 5587.3291, 1.6212463e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setDir 96.416458;
    _this setPos [(1797.9503)-_centerX+_centerSpawnX, (5587.3291)-_centerY+_centerSpawnY, 1.6212463e-005];
};

_vehicle_70 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Crouch_F", [1798.3737, 5581.5425, 2.0503998e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_70 = _this;
    _this setDir 282.57159;
    _this setPos [(1798.3737)-_centerX+_centerSpawnX, (5581.5425)-_centerY+_centerSpawnY, 2.0503998e-005];
};

_vehicle_72 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Crouch_F", [1802.5963, 5581.0464, 1.4305115e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_72 = _this;
    _this setDir 105.14336;
    _this setPos [(1802.5963)-_centerX+_centerSpawnX, (5581.0464)-_centerY+_centerSpawnY, 1.4305115e-005];
};

_vehicle_74 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Crouch_F", [1814.9888, 5579.6196, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_74 = _this;
    _this setDir -81.931541;
    _this setPos [(1814.9888)-_centerX+_centerSpawnX, (5579.6196)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_76 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1807.922, 5582.7344], [], 0, "CAN_COLLIDE"];
    _vehicle_76 = _this;
    _this setDir 14.030965;
    _this setPos [(1807.922)-_centerX+_centerSpawnX, (5582.7344)-_centerY+_centerSpawnY];
};

_vehicle_79 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1809.0563, 5583.5332, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_79 = _this;
    _this setDir 371.54681;
    _this setPos [(1809.0563)-_centerX+_centerSpawnX, (5583.5332)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_82 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1811.6517, 5582.8379, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_82 = _this;
    _this setDir 378.43976;
    _this setPos [(1811.6517)-_centerX+_centerSpawnX, (5582.8379)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_85 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1799.0481, 5571.3936, 9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_85 = _this;
    _this setDir 564.70435;
    _this setPos [(1799.0481)-_centerX+_centerSpawnX, (5571.3936)-_centerY+_centerSpawnY, 9.059906e-006];
};

_vehicle_90 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Round_F", [1795.4739, 5574.272, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_90 = _this;
    _this setDir 72.089584;
    _this setPos [(1795.4739)-_centerX+_centerSpawnX, (5574.272)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_91 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1796.2686, 5578.707, 2.0503998e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_91 = _this;
    _this setDir 105.57758;
    _this setPos [(1796.2686)-_centerX+_centerSpawnX, (5578.707)-_centerY+_centerSpawnY, 2.0503998e-005];
};

_vehicle_95 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_End_F", [1795.8593, 5576.9702, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_95 = _this;
    _this setDir 97.393417;
    _this setPos [(1795.8593)-_centerX+_centerSpawnX, (5576.9702)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_98 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Stand_F", [1805.4221, 5570.5728, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_98 = _this;
    _this setDir 23.133099;
    _this setPos [(1805.4221)-_centerX+_centerSpawnX, (5570.5728)-_centerY+_centerSpawnY, -6.6757202e-006];
};

_vehicle_99 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Stand_F", [1804.2317, 5580.5718, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_99 = _this;
    _this setDir -75.590302;
    _this setPos [(1804.2317)-_centerX+_centerSpawnX, (5580.5718)-_centerY+_centerSpawnY, 4.7683716e-006];
};

_vehicle_103 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Stand_F", [1804.9945, 5587.6079, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_103 = _this;
    _this setDir 5.1114602;
    _this setPos [(1804.9945)-_centerX+_centerSpawnX, (5587.6079)-_centerY+_centerSpawnY, -5.7220459e-006];
};

_vehicle_105 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Stand_F", [1808.083, 5581.7266, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_105 = _this;
    _this setDir 11.064819;
    _this setPos [(1808.083)-_centerX+_centerSpawnX, (5581.7266)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_108 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1811.8103, 5580.5615, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_108 = _this;
    _this setDir 105.3732;
    _this setPos [(1811.8103)-_centerX+_centerSpawnX, (5580.5615)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_114 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Stand_F", [1810.5605, 5579.0781, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_114 = _this;
    _this setDir 105.26983;
    _this setPos [(1810.5605)-_centerX+_centerSpawnX, (5579.0781)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_117 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Stand_F", [1810.054, 5581.229, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_117 = _this;
    _this setDir 12.949816;
    _this setPos [(1810.054)-_centerX+_centerSpawnX, (5581.229)-_centerY+_centerSpawnY, -4.2915344e-006];
};

_vehicle_132 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_5_F", [1809.4308, 5576.3354, 2.0027161e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_132 = _this;
    _this setDir 195.11768;
    _this setPos [(1809.4308)-_centerX+_centerSpawnX, (5576.3354)-_centerY+_centerSpawnY, 2.0027161e-005];
};

_vehicle_135 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1803.8925, 5577.7241, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_135 = _this;
    _this setDir -164.82225;
    _this setPos [(1803.8925)-_centerX+_centerSpawnX, (5577.7241)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_138 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_1_F", [1802.6482, 5577.8955, -1.0967255e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_138 = _this;
    _this setDir -78.188332;
    _this setPos [(1802.6482)-_centerX+_centerSpawnX, (5577.8955)-_centerY+_centerSpawnY, -1.0967255e-005];
};

_vehicle_141 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Stand_F", [1808.0249, 5577.6025, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_141 = _this;
    _this setDir 194.33574;
    _this setPos [(1808.0249)-_centerX+_centerSpawnX, (5577.6025)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_144 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Stand_F", [1805.0909, 5578.3252, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_144 = _this;
    _this setDir 13.047391;
    _this setPos [(1805.0909)-_centerX+_centerSpawnX, (5578.3252)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_147 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1807.9745, 5587.8115, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_147 = _this;
    _this setDir 14.65013;
    _this setPos [(1807.9745)-_centerX+_centerSpawnX, (5587.8115)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_150 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Stand_F", [1807.9447, 5586.9341], [], 0, "CAN_COLLIDE"];
    _vehicle_150 = _this;
    _this setDir 16.160831;
    _this setPos [(1807.9447)-_centerX+_centerSpawnX, (5586.9341)-_centerY+_centerSpawnY];
};

_vehicle_152 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1810.3711, 5580.5601, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_152 = _this;
    _this setDir -5.0979729;
    _this setPos [(1810.3711)-_centerX+_centerSpawnX, (5580.5601)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_153 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Wps_F", [1809.3738, 5577.7437, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_153 = _this;
    _this setDir 7.5520658;
    _this setPos [(1809.3738)-_centerX+_centerSpawnX, (5577.7437)-_centerY+_centerSpawnY, -5.7220459e-006];
};

_vehicle_154 = objNull;
if (true) then {
    _this = createVehicle ["MapBoard_stratis_F", [1809.5631, 5580.626, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_154 = _this;
    _this setDir 60.364491;
    _this setPos [(1809.5631)-_centerX+_centerSpawnX, (5580.626)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_156 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bench_F", [1807.6395, 5586.4204, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_156 = _this;
    _this setDir -75.544075;
    _this setPos [(1807.6395)-_centerX+_centerSpawnX, (5586.4204)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_157 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoOrd_F", [1808.181, 5581.3389], [], 0, "CAN_COLLIDE"];
    _vehicle_157 = _this;
    _this setDir 114.43649;
    _this setPos [(1808.181)-_centerX+_centerSpawnX, (5581.3389)-_centerY+_centerSpawnY];
};

_vehicle_158 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Support_F", [1809.1862, 5578.6191], [], 0, "CAN_COLLIDE"];
    _vehicle_158 = _this;
    _this setDir -33.135559;
    _this setPos [(1809.1862)-_centerX+_centerSpawnX, (5578.6191)-_centerY+_centerSpawnY];
};

_vehicle_159 = objNull;
if (true) then {
    _this = createVehicle ["O_supplyCrate_F", [1799.2623, 5582.4023, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_159 = _this;
    _this setDir 103.3849;
    _this setPos [(1799.2623)-_centerX+_centerSpawnX, (5582.4023)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_160 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Ammo_F", [1809.9607, 5578.5488, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_160 = _this;
    _this setDir -18.970835;
    _this setPos [(1809.9607)-_centerX+_centerSpawnX, (5578.5488)-_centerY+_centerSpawnY, 1.1444092e-005];
};

_vehicle_167 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Grenades_F", [1807.2072, 5581.2954, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_167 = _this;
    _this setDir -1.767525;
    _this setPos [(1807.2072)-_centerX+_centerSpawnX, (5581.2954)-_centerY+_centerSpawnY, -4.7683716e-006];
};

_vehicle_169 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bucket_F", [1809.0244, 5586.3179, 2.9563904e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_169 = _this;
    _this setPos [(1809.0244)-_centerX+_centerSpawnX, (5586.3179)-_centerY+_centerSpawnY, 2.9563904e-005];
};

_vehicle_171 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V2_F", [1806.1981, 5586.8848, 1.335144e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_171 = _this;
    _this setDir 9.1306;
    _this setPos [(1806.1981)-_centerX+_centerSpawnX, (5586.8848)-_centerY+_centerSpawnY, 1.335144e-005];
};

_vehicle_172 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingTable_F", [1804.9923, 5578.9702, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_172 = _this;
    _this setDir 189.87329;
    _this setPos [(1804.9923)-_centerX+_centerSpawnX, (5578.9702)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_175 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingTable_F", [1806.9878, 5578.4961, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_175 = _this;
    _this setDir 196.11839;
    _this setPos [(1806.9878)-_centerX+_centerSpawnX, (5578.4961)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_177 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V2_F", [1805.447, 5587.0112, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_177 = _this;
    _this setPos [(1805.447)-_centerX+_centerSpawnX, (5587.0112)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_178 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V1_F", [1798.8752, 5580.9966, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_178 = _this;
    _this setDir -78.630333;
    _this setPos [(1798.8752)-_centerX+_centerSpawnX, (5580.9966)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_183 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Wall_Long_Stand_F", [1802.5605, 5571.5176, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_183 = _this;
    _this setDir 198.02274;
    _this setPos [(1802.5605)-_centerX+_centerSpawnX, (5571.5176)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_186 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1807.0208, 5568.6318, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_186 = _this;
    _this setDir 371.44385;
    _this setPos [(1807.0208)-_centerX+_centerSpawnX, (5568.6318)-_centerY+_centerSpawnY, 6.6757202e-006];
};

_vehicle_189 = objNull;
if (true) then {
    _this = createVehicle ["Land_HBarrier_3_F", [1812.2422, 5567.7344, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_189 = _this;
    _this setDir -74.763107;
    _this setPos [(1812.2422)-_centerX+_centerSpawnX, (5567.7344)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_195 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1810.6722, 5567.7813, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_195 = _this;
    _this setDir 190.13141;
    _this setPos [(1810.6722)-_centerX+_centerSpawnX, (5567.7813)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_198 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1813.9911, 5571.6582, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_198 = _this;
    _this setDir 285.92978;
    _this setPos [(1813.9911)-_centerX+_centerSpawnX, (5571.6582)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_201 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1814.578, 5573.7622, -4.2438507e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_201 = _this;
    _this setDir 7.2611618;
    _this setPos [(1814.578)-_centerX+_centerSpawnX, (5573.7622)-_centerY+_centerSpawnY, -4.2438507e-005];
};

_vehicle_204 = objNull;
if (true) then {
    _this = createVehicle ["O_supplyCrate_F", [1809.151, 5571.9531, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_204 = _this;
    _this setDir 135.43332;
    _this setPos [(1809.151)-_centerX+_centerSpawnX, (5571.9531)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_207 = objNull;
if (true) then {
    _this = createVehicle ["O_supplyCrate_F", [1810.049, 5570.918, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_207 = _this;
    _this setDir 118.68628;
    _this setPos [(1810.049)-_centerX+_centerSpawnX, (5570.918)-_centerY+_centerSpawnY, 6.1988831e-006];
};

_vehicle_209 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingTable_F", [1810.579, 5572.2847, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_209 = _this;
    _this setDir 44.560894;
    _this setPos [(1810.579)-_centerX+_centerSpawnX, (5572.2847)-_centerY+_centerSpawnY, 9.5367432e-006];
};

_vehicle_211 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V2_F", [1811.3186, 5572.2949, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_211 = _this;
    _this setDir 25.530502;
    _this setPos [(1811.3186)-_centerX+_centerSpawnX, (5572.2949)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_215 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1803.0461, 5576.9766, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_215 = _this;
    _this setDir 555.81274;
    _this setPos [(1803.0461)-_centerX+_centerSpawnX, (5576.9766)-_centerY+_centerSpawnY, 6.6757202e-006];
};

_vehicle_216 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1805.7627, 5576.2432, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_216 = _this;
    _this setDir 554.30817;
    _this setPos [(1805.7627)-_centerX+_centerSpawnX, (5576.2432)-_centerY+_centerSpawnY, 5.2452087e-006];
};

_vehicle_220 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Long_F", [1808.6162, 5575.5732, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_220 = _this;
    _this setDir 551.99139;
    _this setPos [(1808.6162)-_centerX+_centerSpawnX, (5575.5732)-_centerY+_centerSpawnY, 1.9073486e-006];
};

_vehicle_223 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Corner_F", [1811.543, 5575.9312, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_223 = _this;
    _this setDir 106.62188;
    _this setPos [(1811.543)-_centerX+_centerSpawnX, (5575.9312)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_226 = objNull;
if (true) then {
    _this = createVehicle ["Land_BagFence_Short_F", [1801.7167, 5578.3301, 2.7656555e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_226 = _this;
    _this setDir 99.883644;
    _this setPos [(1801.7167)-_centerX+_centerSpawnX, (5578.3301)-_centerY+_centerSpawnY, 2.7656555e-005];
};