class VAS
{
    tag = "VAS";
    class functions
    {
        file = "VAS\functions";
        class onRespawn {description = "Called when a selected loadout is set to be loaded on respawn.";};
        class deleteGear {description = "Deletes the selected slot from the profileNamespace.";};
        class loadoutInfo {description = "Pulls up information about the selected slot and displays it.";};
        class loadGear {description = "Loads the selected VAS saved slot.";};
        class saveGear {description = "Saves current gear into selected slot for VAS.";};
        class SaveLoad {description = "Handles request and pulls up either the load menu or save menu.";};
        class details {description = "Handles request, if it is a weapon it will display the magazines for the weapon.";};
        class removeGear {description = "Handles request and removes the selected gear from the player.";};
        class addGear {description = "Adds the selected gear to the player.";};
        class handleItem {description = "Handles the incoming requests and decides how it is to be added or removed.";};
        class filterShow {description = "Checks if we need to hide/show filters.";};
        class filterMenu {description = "When a filter is called it will give us the details and we shall short her out!";};
        class fetchCfg {description = "Checks where to fetch the Cfg Patches from.";};
        class fetchCfgDetails {description = "Returns information about the entity, if no information it will return either nil or an empty array";};
        class buildConfig {description = "Used in preloading of VAS, builds the arrays of weapons/items.";};
        class filter {description = "Takes array of types and filters it and returns what the filter was.";};
        class fetchPlayerGear {description = "Fetches all the gear on the player and returns as one single array.";};
        class mainDisplay {description = "Handles the main part of VAS's Display";};
        class playerDisplay {description = "Used in refreshing the items a player has.";};
        class accType {_description = "Checks what type of an attachment is passed and what it is compatible with.";};
        class openDetails {};
        class closeDetails {};
        class quickMag {};
        class quickItem {};
        class qRemoveItem {};
        class mainInit {description = "Main initialization of VAS, called on mission start."; preInit = 1;};
        class KRON_StrLeft {};
        class KRON_StrToArray {};
        class accPrompt {};
        class quickAddDrag {};
        class updateLoad {};
        class transferMenu {};
        class transferAction {};
        class transferNetwork {};
        class transferSaveMenu {};
        class transferSaveGear {};
        class VASP {};
        class quickAttachment {};
        class accList {};
        class test {};
    };
};