_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_83 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1806.2222, 5579.3364, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_83 = _this;
    _this setPos [1806.2222, 5579.3364, 1.0490417e-005];
};

_centerObj = getpos _vehicle_83;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_83;

_vehicle_87 = objNull;
if (true) then {
    _this = createVehicle ["Land_IronPipes_F", [1812.9628, 5577.0703, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_87 = _this;
    _this setDir -88.125458;
    _this setPos [(1812.9628)-_centerX+_centerSpawnX, (5577.0703)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_88 = objNull;
if (true) then {
    _this = createVehicle ["Land_Pipes_large_F", [1810.8737, 5575.4194], [], 0, "CAN_COLLIDE"];
    _vehicle_88 = _this;
    _this setDir -78.030861;
    _this setPos [(1810.8737)-_centerX+_centerSpawnX, (5575.4194)-_centerY+_centerSpawnY];
};

_vehicle_89 = objNull;
if (true) then {
    _this = createVehicle ["Land_Pipes_small_F", [1811.7238, 5579.1802, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_89 = _this;
    _this setDir 99.289902;
    _this setPos [(1811.7238)-_centerX+_centerSpawnX, (5579.1802)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_95 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_F", [1798.927, 5581.2529, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_95 = _this;
    _this setPos [(1798.927)-_centerX+_centerSpawnX, (5581.2529)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_96 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_empty_F", [1799.3049, 5580.6167, -2.6226044e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_96 = _this;
    _this setPos [(1799.3049)-_centerX+_centerSpawnX, (5580.6167)-_centerY+_centerSpawnY, -2.6226044e-005];
};

_vehicle_97 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1800.1119, 5581.3682, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_97 = _this;
    _this setPos [(1800.1119)-_centerX+_centerSpawnX, (5581.3682)-_centerY+_centerSpawnY, -7.1525574e-006];
};

_vehicle_98 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterTank_F", [1799.0313, 5577.9585], [], 0, "CAN_COLLIDE"];
    _vehicle_98 = _this;
    _this setDir 106.68499;
    _this setPos [(1799.0313)-_centerX+_centerSpawnX, (5577.9585)-_centerY+_centerSpawnY];
};

_vehicle_100 = objNull;
if (true) then {
    _this = createVehicle ["Land_Grinder_F", [1810.6766, 5577.9287], [], 0, "CAN_COLLIDE"];
    _vehicle_100 = _this;
    _this setDir -113.07019;
    _this setPos [(1810.6766)-_centerX+_centerSpawnX, (5577.9287)-_centerY+_centerSpawnY];
};

_vehicle_101 = objNull;
if (true) then {
    _this = createVehicle ["Land_Pallet_F", [1800.7198, 5579.5762, 3.7193298e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_101 = _this;
    _this setPos [(1800.7198)-_centerX+_centerSpawnX, (5579.5762)-_centerY+_centerSpawnY, 3.7193298e-005];
};

_vehicle_103 = objNull;
if (true) then {
    _this = createVehicle ["Land_WorkStand_F", [1799.9614, 5576.7583, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_103 = _this;
    _this setDir 126.17086;
    _this setPos [(1799.9614)-_centerX+_centerSpawnX, (5576.7583)-_centerY+_centerSpawnY, 2.8610229e-006];
};

_vehicle_105 = objNull;
if (true) then {
    _this = createVehicle ["O_Truck_02_transport_F", [1802.9224, 5576.1797, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_105 = _this;
    _this setDir 187.68138;
    _this setPos [(1802.9224)-_centerX+_centerSpawnX, (5576.1797)-_centerY+_centerSpawnY, 1.0490417e-005];
};

_vehicle_107 = objNull;
if (true) then {
    _this = createVehicle ["O_Truck_02_covered_F", [1802.2045, 5585.0039, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_107 = _this;
    _this setDir 141.58446;
    _this setPos [(1802.2045)-_centerX+_centerSpawnX, (5585.0039)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_112 = objNull;
if (true) then {
    _this = createVehicle ["Land_Wreck_Truck_dropside_F", [1810.8995, 5570.7734, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_112 = _this;
    _this setDir 30.309525;
    _this setPos [(1810.8995)-_centerX+_centerSpawnX, (5570.7734)-_centerY+_centerSpawnY, -1.5258789e-005];
};

_vehicle_118 = objNull;
if (true) then {
    _this = createVehicle ["Land_Tyres_F", [1811.1655, 5582.2065], [], 0, "CAN_COLLIDE"];
    _vehicle_118 = _this;
    _this setDir 60.680023;
    _this setPos [(1811.1655)-_centerX+_centerSpawnX, (5582.2065)-_centerY+_centerSpawnY];
};

_vehicle_119 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bench_F", [1803.3467, 5580.0571, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_119 = _this;
    _this setDir 96.60717;
    _this setPos [(1803.3467)-_centerX+_centerSpawnX, (5580.0571)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_123 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1807.5986, 5567.7822, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_123 = _this;
    _this setDir 14.828603;
    _this setPos [(1807.5986)-_centerX+_centerSpawnX, (5567.7822)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_125 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1802.9833, 5568.8975, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_125 = _this;
    _this setDir 11.766514;
    _this setPos [(1802.9833)-_centerX+_centerSpawnX, (5568.8975)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_128 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1797.7887, 5570.335, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_128 = _this;
    _this setDir 16.198458;
    _this setPos [(1797.7887)-_centerX+_centerSpawnX, (5570.335)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_130 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1796.5012, 5571.8203, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_130 = _this;
    _this setDir 93.624588;
    _this setPos [(1796.5012)-_centerX+_centerSpawnX, (5571.8203)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_131 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1801.9913, 5565.2402, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_131 = _this;
    _this setDir 190.20491;
    _this setPos [(1801.9913)-_centerX+_centerSpawnX, (5565.2402)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_132 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1796.9681, 5583.7603, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_132 = _this;
    _this setDir 100.54065;
    _this setPos [(1796.9681)-_centerX+_centerSpawnX, (5583.7603)-_centerY+_centerSpawnY, -1.0490417e-005];
};

_vehicle_134 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1811.8774, 5567.4697, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_134 = _this;
    _this setDir 133.02003;
    _this setPos [(1811.8774)-_centerX+_centerSpawnX, (5567.4697)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_137 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1813.8247, 5570.165], [], 0, "CAN_COLLIDE"];
    _vehicle_137 = _this;
    _this setDir 108.54884;
    _this setPos [(1813.8247)-_centerX+_centerSpawnX, (5570.165)-_centerY+_centerSpawnY];
};

_vehicle_140 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1814.3434, 5572.1582, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_140 = _this;
    _this setDir 101.43824;
    _this setPos [(1814.3434)-_centerX+_centerSpawnX, (5572.1582)-_centerY+_centerSpawnY, -3.3378601e-006];
};

_vehicle_143 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1814.3365, 5574.1514, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_143 = _this;
    _this setDir 103.70717;
    _this setPos [(1814.3365)-_centerX+_centerSpawnX, (5574.1514)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_146 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1812.8665, 5581.9814, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_146 = _this;
    _this setDir 84.502144;
    _this setPos [(1812.8665)-_centerX+_centerSpawnX, (5581.9814)-_centerY+_centerSpawnY, 7.6293945e-006];
};

_vehicle_149 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1812.8041, 5585.375, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_149 = _this;
    _this setDir 272.20126;
    _this setPos [(1812.8041)-_centerX+_centerSpawnX, (5585.375)-_centerY+_centerSpawnY, -6.6757202e-006];
};

_vehicle_156 = objNull;
if (true) then {
    _this = createVehicle ["Land_Shoot_House_Tunnel_Crouch_F", [1805.4832, 5574.1675, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_156 = _this;
    _this setDir 5.5005379;
    _this setPos [(1805.4832)-_centerX+_centerSpawnX, (5574.1675)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_162 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bench_F", [1807.0396, 5574.4233, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_162 = _this;
    _this setDir 180.32771;
    _this setPos [(1807.0396)-_centerX+_centerSpawnX, (5574.4233)-_centerY+_centerSpawnY, 3.8146973e-006];
};

_vehicle_164 = objNull;
if (true) then {
    _this = createVehicle ["Land_CargoBox_V1_F", [1807.4828, 5569.8877], [], 0, "CAN_COLLIDE"];
    _vehicle_164 = _this;
    _this setDir 23.663448;
    _this setPos [(1807.4828)-_centerX+_centerSpawnX, (5569.8877)-_centerY+_centerSpawnY];
};

_vehicle_167 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo20_military_green_F", [1796.8547, 5579.1304], [], 0, "CAN_COLLIDE"];
    _vehicle_167 = _this;
    _this setDir 96.250336;
    _this setPos [(1796.8547)-_centerX+_centerSpawnX, (5579.1304)-_centerY+_centerSpawnY];
};

_vehicle_169 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1796.6016, 5575.085, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_169 = _this;
    _this setDir 101.57317;
    _this setPos [(1796.6016)-_centerX+_centerSpawnX, (5575.085)-_centerY+_centerSpawnY, -2.8610229e-006];
};

_vehicle_171 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_F", [1797.8823, 5582.7642, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_171 = _this;
    _this setPos [(1797.8823)-_centerX+_centerSpawnX, (5582.7642)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_173 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_F", [1799.9871, 5582.6265, 4.8160553e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_173 = _this;
    _this setPos [(1799.9871)-_centerX+_centerSpawnX, (5582.6265)-_centerY+_centerSpawnY, 4.8160553e-005];
};

_vehicle_175 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1798.9042, 5582.8237, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_175 = _this;
    _this setPos [(1798.9042)-_centerX+_centerSpawnX, (5582.8237)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_177 = objNull;
if (true) then {
    _this = createVehicle ["Land_WaterBarrel_F", [1798.3749, 5584.063], [], 0, "CAN_COLLIDE"];
    _vehicle_177 = _this;
    _this setPos [(1798.3749)-_centerX+_centerSpawnX, (5584.063)-_centerY+_centerSpawnY];
};

_vehicle_179 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoVeh_F", [1811.5807, 5585.2861, -5.2452087e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_179 = _this;
    _this setPos [(1811.5807)-_centerX+_centerSpawnX, (5585.2861)-_centerY+_centerSpawnY, -5.2452087e-005];
};

_vehicle_181 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoVeh_F", [1795.0682, 5583.5, 2.0027161e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_181 = _this;
    _this setDir 15.016981;
    _this setPos [(1795.0682)-_centerX+_centerSpawnX, (5583.5)-_centerY+_centerSpawnY, 2.0027161e-005];
};

_vehicle_183 = objNull;
if (true) then {
    _this = createVehicle ["O_supplyCrate_F", [1805.4933, 5574.2349, 1.3851749], [], 0, "CAN_COLLIDE"];
    _vehicle_183 = _this;
    _this setDir 64.2202;
    _this setPos [(1805.4933)-_centerX+_centerSpawnX, (5574.2349)-_centerY+_centerSpawnY, 1.3851749];
};

_vehicle_184 = objNull;
if (true) then {
    _this = createVehicle ["O_MRAP_02_F", [1816.5087, 5582.4043], [], 0, "CAN_COLLIDE"];
    _vehicle_184 = _this;
    _this setDir -9.1138811;
    _this setPos [(1816.5087)-_centerX+_centerSpawnX, (5582.4043)-_centerY+_centerSpawnY];
};

_vehicle_185 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall4_F", [1820.6134, 5580.4424, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_185 = _this;
    _this setDir 86.019661;
    _this setPos [(1820.6134)-_centerX+_centerSpawnX, (5580.4424)-_centerY+_centerSpawnY, -7.6293945e-006];
};

_vehicle_187 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall4_F", [1820.1271, 5573.5039], [], 0, "CAN_COLLIDE"];
    _vehicle_187 = _this;
    _this setDir 93.952965;
    _this setPos [(1820.1271)-_centerX+_centerSpawnX, (5573.5039)-_centerY+_centerSpawnY];
};

_vehicle_192 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1820.0612, 5569.9063, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_192 = _this;
    _this setDir 100.02832;
    _this setPos [(1820.0612)-_centerX+_centerSpawnX, (5569.9063)-_centerY+_centerSpawnY, -1.8119812e-005];
};

_vehicle_194 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1819.7059, 5568.9614, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_194 = _this;
    _this setDir 94.122787;
    _this setPos [(1819.7059)-_centerX+_centerSpawnX, (5568.9614)-_centerY+_centerSpawnY, -6.1988831e-006];
};

_vehicle_196 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncWall1_F", [1822.4235, 5576.772, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_196 = _this;
    _this setDir 87.529411;
    _this setPos [(1822.4235)-_centerX+_centerSpawnX, (5576.772)-_centerY+_centerSpawnY, 1.4305115e-006];
};

_vehicle_199 = objNull;
if (true) then {
    _this = createVehicle ["Land_BarrelSand_F", [1819.5923, 5575.3491, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_199 = _this;
    _this setPos [(1819.5923)-_centerX+_centerSpawnX, (5575.3491)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_201 = objNull;
if (true) then {
    _this = createVehicle ["Land_BarrelSand_F", [1810.5162, 5586.793, 1.7642975e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_201 = _this;
    _this setPos [(1810.5162)-_centerX+_centerSpawnX, (5586.793)-_centerY+_centerSpawnY, 1.7642975e-005];
};

_vehicle_203 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_empty_F", [1819.4574, 5574.6606, -1.3828278e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_203 = _this;
    _this setPos [(1819.4574)-_centerX+_centerSpawnX, (5574.6606)-_centerY+_centerSpawnY, -1.3828278e-005];
};

_vehicle_205 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_empty_F", [1815.2506, 5573.5996, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_205 = _this;
    _this setPos [(1815.2506)-_centerX+_centerSpawnX, (5573.5996)-_centerY+_centerSpawnY, -1.0490417e-005];
};

_vehicle_207 = objNull;
if (true) then {
    _this = createVehicle ["Land_MetalBarrel_F", [1814.15, 5576.0977, 3.6716461e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_207 = _this;
    _this setPos [(1814.15)-_centerX+_centerSpawnX, (5576.0977)-_centerY+_centerSpawnY, 3.6716461e-005];
};

_vehicle_210 = objNull;
if (true) then {
    _this = createVehicle ["Land_Cargo20_grey_F", [1818.2158, 5570.1987, 1.1920929e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_210 = _this;
    _this setDir 95.525024;
    _this setPos [(1818.2158)-_centerX+_centerSpawnX, (5570.1987)-_centerY+_centerSpawnY, 1.1920929e-005];
};

_vehicle_211 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1819.9354, 5584.564, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_211 = _this;
    _this setDir 87.310349;
    _this setPos [(1819.9354)-_centerX+_centerSpawnX, (5584.564)-_centerY+_centerSpawnY, -7.6293945e-006];
};

_vehicle_213 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrierMedium_F", [1819.7722, 5586.5566, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_213 = _this;
    _this setDir 81.796623;
    _this setPos [(1819.7722)-_centerX+_centerSpawnX, (5586.5566)-_centerY+_centerSpawnY, -1.8119812e-005];
};

_vehicle_215 = objNull;
if (true) then {
    _this = createVehicle ["Land_CncBarrier_F", [1797.2041, 5586.7896, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_215 = _this;
    _this setDir 90.75956;
    _this setPos [(1797.2041)-_centerX+_centerSpawnX, (5586.7896)-_centerY+_centerSpawnY, -2.8610229e-006];
};