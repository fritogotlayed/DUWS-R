_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;

_vehicle_0 = objNull;
if (true) then {
    _this = createVehicle ["Land_MultiMeter_F", [1817.7137, 5623.6685, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_0 = _this;
    _this setPos [1817.7137, 5623.6685, 8.5830688e-006];
};

_centerObj = getpos _vehicle_0;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;

_vehicle_1 = objNull;
if (true) then {
    _this = createVehicle ["Land_TentDome_F", [1809.536, 5625.853, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir -164.41013;
    _this setPos [(1809.536)-_centerX+_centerSpawnX, (5625.853)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_2 = objNull;
if (true) then {
    _this = createVehicle ["Land_TentDome_F", [1814.4622, 5629.0405, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 238.97133;
    _this setPos [(1814.4622)-_centerX+_centerSpawnX, (5629.0405)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_4 = objNull;
if (true) then {
    _this = createVehicle ["Land_Sleeping_bag_brown_folded_F", [1813.3059, 5627.9263, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir -29.269037;
    _this setPos [(1813.3059)-_centerX+_centerSpawnX, (5627.9263)-_centerY+_centerSpawnY, -1.1444092e-005];
};

_vehicle_5 = objNull;
if (true) then {
    _this = createVehicle ["Land_Sleeping_bag_brown_folded_F", [1813.499, 5627.5293, -6.4373016e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 36.197414;
    _this setPos [(1813.499)-_centerX+_centerSpawnX, (5627.5293)-_centerY+_centerSpawnY, -6.4373016e-005];
};

_vehicle_7 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V1_F", [1816.9767, 5628.8936, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 15.48923;
    _this setPos [(1816.9767)-_centerX+_centerSpawnX, (5628.8936)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_8 = objNull;
if (true) then {
    _this = createVehicle ["Campfire_burning_F", [1815.2407, 5624.3525, -4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setPos [(1815.2407)-_centerX+_centerSpawnX, (5624.3525)-_centerY+_centerSpawnY, -4.7683716e-007];
};

_vehicle_9 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V1_F", [1813.3864, 5623.4785, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir -117.25176;
    _this setPos [(1813.3864)-_centerX+_centerSpawnX, (5623.4785)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_10 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V1_F", [1811.207, 5627.2354, 2.8133392e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir -72.407852;
    _this setPos [(1811.207)-_centerX+_centerSpawnX, (5627.2354)-_centerY+_centerSpawnY, 2.8133392e-005];
};

_vehicle_11 = objNull;
if (true) then {
    _this = createVehicle ["Land_Pillow_camouflage_F", [1813.494, 5627.7837, -9.059906e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setPos [(1813.494)-_centerX+_centerSpawnX, (5627.7837)-_centerY+_centerSpawnY, -9.059906e-006];
};

_vehicle_12 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingTable_small_F", [1812.2482, 5627.9077, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir -10.270829;
    _this setPos [(1812.2482)-_centerX+_centerSpawnX, (5627.9077)-_centerY+_centerSpawnY, 7.1525574e-006];
};

_vehicle_13 = objNull;
if (true) then {
    _this = createVehicle ["Land_Camping_Light_F", [1811.9784, 5627.9287, 0.84942609], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 11.109631;
    _this setPos [(1811.9784)-_centerX+_centerSpawnX, (5627.9287)-_centerY+_centerSpawnY, 0.84942609];
};

_vehicle_14 = objNull;
if (true) then {
    _this = createVehicle ["Land_WoodPile_F", [1812.453, 5622.6929, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir -40.056007;
    _this setPos [(1812.453)-_centerX+_centerSpawnX, (5622.6929)-_centerY+_centerSpawnY, 2.8610229e-006];
};

_vehicle_15 = objNull;
if (true) then {
    _this = createVehicle ["Land_WoodPile_F", [1812.1151, 5622.3027, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 139.78033;
    _this setPos [(1812.1151)-_centerX+_centerSpawnX, (5622.3027)-_centerY+_centerSpawnY, -9.5367432e-006];
};

_vehicle_17 = objNull;
if (true) then {
    _this = createVehicle ["Land_Camping_Light_F", [1810.2744, 5624.3384, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setPos [(1810.2744)-_centerX+_centerSpawnX, (5624.3384)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_23 = objNull;
if (true) then {
    _this = createVehicle ["Land_Bucket_clean_F", [1813.2089, 5621.8301, -3.6239624e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setPos [(1813.2089)-_centerX+_centerSpawnX, (5621.8301)-_centerY+_centerSpawnY, -3.6239624e-005];
};

_vehicle_25 = objNull;
if (true) then {
    _this = createVehicle ["Land_PortableLongRangeRadio_F", [1812.3014, 5628.0039, 0.80925447], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 11.109631;
    _this setPos [(1812.3014)-_centerX+_centerSpawnX, (5628.0039)-_centerY+_centerSpawnY, 0.80925447];
};

_vehicle_27 = objNull;
if (true) then {
    _this = createVehicle ["Land_Axe_F", [1813.3134, 5621.4414, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 13.720209;
    _this setPos [(1813.3134)-_centerX+_centerSpawnX, (5621.4414)-_centerY+_centerSpawnY, -9.5367432e-007];
};

_vehicle_28 = objNull;
if (true) then {
    _this = createVehicle ["Land_Pallet_F", [1821.5098, 5622.0801, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 87.241104;
    _this setPos [(1821.5098)-_centerX+_centerSpawnX, (5622.0801)-_centerY+_centerSpawnY, -1.4305115e-006];
};

_vehicle_29 = objNull;
if (true) then {
    _this = createVehicle ["Land_Portable_generator_F", [1821.5607, 5622.0625, 0.15791731], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 87.751984;
    _this setPos [(1821.5607)-_centerX+_centerSpawnX, (5622.0625)-_centerY+_centerSpawnY, 0.15791731];
};

_vehicle_32 = objNull;
if (true) then {
    _this = createVehicle ["Land_Timbers_F", [1821.432, 5626.583, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir -29.985903;
    _this setPos [(1821.432)-_centerX+_centerSpawnX, (5626.583)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_33 = objNull;
if (true) then {
    _this = createVehicle ["Land_WorkStand_F", [1820.2357, 5625.1577, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 56.699184;
    _this setPos [(1820.2357)-_centerX+_centerSpawnX, (5625.1577)-_centerY+_centerSpawnY, -3.8146973e-006];
};

_vehicle_34 = objNull;
if (true) then {
    _this = createVehicle ["B_G_Offroad_01_armed_F", [1818.2542, 5619.2583, 0.090222724], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 197.77122;
    _this setPos [(1818.2542)-_centerX+_centerSpawnX, (5619.2583)-_centerY+_centerSpawnY, 0.090222724];
};

_vehicle_36 = objNull;
if (true) then {
    _this = createVehicle ["Land_CampingChair_V1_F", [1814.3376, 5622.2422, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir -144.30995;
    _this setPos [(1814.3376)-_centerX+_centerSpawnX, (5622.2422)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_39 = objNull;
if (true) then {
    _this = createVehicle ["O_Quadbike_01_F", [1818.0513, 5627.2832, 0.11207256], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 211.33353;
    _this setPos [(1818.0513)-_centerX+_centerSpawnX, (5627.2832)-_centerY+_centerSpawnY, 0.11207256];
};

_vehicle_45 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_AmmoOrd_F", [1819.6979, 5625.6367, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setPos [(1819.6979)-_centerX+_centerSpawnX, (5625.6367)-_centerY+_centerSpawnY, -2.3841858e-006];
};

_vehicle_46 = objNull;
if (true) then {
    _this = createVehicle ["Box_East_Wps_F", [1820.3872, 5624.5439, 2.6226044e-005], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 58.027691;
    _this setPos [(1820.3872)-_centerX+_centerSpawnX, (5624.5439)-_centerY+_centerSpawnY, 2.6226044e-005];
};

_vehicle_49 = objNull;
if (true) then {
    _this = createVehicle ["Land_Garbage_square3_F", [1812.4738, 5625.27, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setPos [(1812.4738)-_centerX+_centerSpawnX, (5625.27)-_centerY+_centerSpawnY, 0];
};

_vehicle_50 = objNull;
if (true) then {
    _this = createVehicle ["Land_Garbage_square5_F", [1817.3683, 5621.2935, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setPos [(1817.3683)-_centerX+_centerSpawnX, (5621.2935)-_centerY+_centerSpawnY, 0];
};

_vehicle_51 = objNull;
if (true) then {
    _this = createVehicle ["Land_Garbage_square3_F", [1817.6099, 5626.2056, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setPos [(1817.6099)-_centerX+_centerSpawnX, (5626.2056)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_63 = objNull;
if (true) then {
    _this = createVehicle ["Land_Sacks_heap_F", [1813.8949, 5620.3647, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_63 = _this;
    _this setDir 12.58939;
    _this setPos [(1813.8949)-_centerX+_centerSpawnX, (5620.3647)-_centerY+_centerSpawnY, 8.5830688e-006];
};

_vehicle_64 = objNull;
if (true) then {
    _this = createVehicle ["Land_CanisterFuel_F", [1822.5935, 5621.5977, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 88.823051;
    _this setPos [(1822.5935)-_centerX+_centerSpawnX, (5621.5977)-_centerY+_centerSpawnY, -1.9073486e-006];
};

_vehicle_65 = objNull;
if (true) then {
    _this = createVehicle ["Land_CanisterFuel_F", [1822.9274, 5621.4023], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 127.97091;
    _this setPos [(1822.9274)-_centerX+_centerSpawnX, (5621.4023)-_centerY+_centerSpawnY];
};

_vehicle_68 = objNull;
if (true) then {
    _this = createVehicle ["Land_ExtensionCord_F", [1821.1305, 5620.8921, 8.1062317e-006], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setDir 174.21414;
    _this setPos [(1821.1305)-_centerX+_centerSpawnX, (5620.8921)-_centerY+_centerSpawnY, 8.1062317e-006];
};

_vehicle_70 = objNull;
if (true) then {
    _this = createVehicle ["Land_Gloves_F", [1813.0779, 5621.335, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_70 = _this;
    _this setPos [(1813.0779)-_centerX+_centerSpawnX, (5621.335)-_centerY+_centerSpawnY, 9.5367432e-007];
};

_vehicle_77 = objNull;
if (true) then {
    _this = createVehicle ["Land_Sleeping_bag_brown_folded_F", [1810.0938, 5624.0913, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
    _vehicle_77 = _this;
    _this setDir 36.197414;
    _this setPos [(1810.0938)-_centerX+_centerSpawnX, (5624.0913)-_centerY+_centerSpawnY, 4.7683716e-007];
};

_vehicle_79 = objNull;
if (true) then {
    _this = createVehicle ["Land_Grinder_F", [1822.0868, 5621.5044, 0.20289806], [], 0, "CAN_COLLIDE"];
    _vehicle_79 = _this;
    _this setDir 40.135223;
    _this setPos [(1822.0868)-_centerX+_centerSpawnX, (5621.5044)-_centerY+_centerSpawnY, 0.20289806];
};