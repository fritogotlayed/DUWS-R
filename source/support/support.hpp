class CfgCommunicationMenu
{
    class artillery
    {
        text = "Artillery Strike (4 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [6, 100, 8, 3, 1, 4, 'R_80mm_HE'] execVM 'support\mapclickarty.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class mortar
    {
        text = "Mortar strike (2 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [8, 50, 5, 3, 2, 2, 'grenade'] execVM 'support\mapclickarty.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\mortar_ca.paa";
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class jdam
    {
        text = "JDAM Strike (1 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [1, 2, 1, 1, 3, 1, 'Bo_Mk82'] execVM 'support\mapclickarty.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
        icon = "\a3\ui_f\data\gui\cfg\hints\Designator_ca.paa";
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class SITREP
    {
        text = "SITREP (1 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = execVM 'support\sitrep.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 0; // 1 to remove the item after calling
    };
    class ammo
    {
        text = "Supply drop (2 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [player] execVM 'support\ammobox.sqf'"; 
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 0; // 1 to remove the item after calling
    };
    class paradrop
    {
        text = "Airborne troops (25 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [player] execVM 'support\paradrop.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\BasicStances_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 0; // 1 to remove the item after calling
    };
    class uav_recon
    {
        text = "UAV Recon (3 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = execVM 'support\mapclickuav.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\Radar_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class vehicle_refit
    {
        text = "Vehicle Refit (2 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = execVM 'support\veh_refit.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\VehicleAmmo_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 0; // 1 to remove the item after calling
    };
    class fob_support
    {
        text = "Establish FOB (10 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [getpos player, 500] execVM 'support\fob.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\Head_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class helo_taxi
    {
        text = "Helicopter taxi(1 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_nill = [getpos player,50] execVM 'support\taxi\helotaxi.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\TakeOff_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class cluster
    {
        text = "Mk.20 II CBU (6 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [1, 250, 1, 90, 1, 6, 'grenade'] execVM 'support\cluster\mapclickcluster.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\Death_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class boat_taxi
    {
        text = "Boat taxi (1 CP)"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation
        expression = "_null = [getpos player,10] execVM 'support\taxi\boattaxi.sqf'"; 
        icon = "\a3\ui_f\data\gui\cfg\hints\BasicDive_ca.paa";
        cursor = ""; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
};