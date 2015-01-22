// _center = createCenter sideLogic;   un center existe d�j�

// create && synchronize HC
_grplogic = createGroup sideLogic;
_hc_module = _grplogic createUnit ["HighCommand",[0,0,0] , [], 0, ""];
_hc_module synchronizeObjectsAdd [player];
// done,

// make 1 HC subordinate so that the player will not control all blufor forces
_grplogic = createGroup sideLogic;
_sub_module = _grplogic createUnit ["HighCommandsubordinate",[0,0,0] , [], 0, ""];                    
_sub_module synchronizeObjectsAdd [_hc_module];