class duws_revive_menu
{
    idd = -1;
    movingenable = false;
    onUnload = "_nul = execVM ""duws_revive\exitMenu.sqf"""; //UI event handler
    //  onLoad = "_this call FRAME_01_Load";

    class controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START
        ////////////////////////////////////////////////////////
        class duws_death_waiting_txt: RscText
        {
            idc = 1000;
            text = "You are waiting to be revived..."; //--- ToDo: Localize;
            x = 13 * GUI_GRID_W + GUI_GRID_X;
            y = 2 * GUI_GRID_H + GUI_GRID_Y;
            w = 15 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
        };
        class duws_death_respawn: RscButton
        {
            idc = 1600;
            text = "Respawn"; //--- ToDo: Localize;
            x = 14.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 11 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            action = "_derp = [] execVM 'duws_revive\respawnClicked.sqf'";
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};