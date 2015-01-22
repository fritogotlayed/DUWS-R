// Abilities based on the players accumulated experience is enabled here.
waitUntil {sleep 2; experience_total>=5};
_handle = [player] execVM "persistent\experience\experience_ability_stamina.sqf";
["new_ability",["New ability: Enhanced Conditioning","Boost your endurance, evade and escape enemies"]] call bis_fnc_showNotification;
["new_ability",["Abilities","More info on abilities inside the briefing"]] call bis_fnc_showNotification;
_index = player createDiarySubject ["abilities_info","Abilities"];
player createDiaryRecord ["abilities_info", ["Abilities", "Each time you will earn a new ability, a new entry will appear inside this tab and you'll be able to read its description. Access the abilities with the radio menu (0-0)."]];
player createDiaryRecord ["abilities_info", ["Enhanced Conditioning", "<font color='#FF0000'>Cool down: 180 seconds</font color><br />Description:<br />When activated through the radio menu, you get a 20 seconds boost where you can run, sprint up mountains and aim without any effect on your stamina. Use this to quickly evade enemies or for quick exfiltration."]];

waitUntil {sleep 2; experience_total>=15};
if (!isMultiplayer) then {
    _handle = [player] execVM "persistent\experience\experience_ability_slowtime.sqf";
    ["new_ability",["New ability: Quick Reflexes","Slow down time, take your shot"]] call bis_fnc_showNotification;
    player createDiaryRecord ["abilities_info", ["Quick Reflexes", "<font color='#FF0000'>Cooldown: 5 minutes</font color><br />Description:<br />When activated through the radio menu, the time is slowed down for around 12 seconds, allowing you to clear rooms, compound or kill in a brief amount of time a group of enemies."]];
}
else
{
    // Place holder until a new skill can be thought up. :-)
    _handle = [player] execVM "persistent\experience\experience_ability_logistic.sqf";
    ["new_ability",["New ability: Logistic Support","They're sending lots of resources your way"]] call bis_fnc_showNotification;
    player createDiaryRecord ["abilities_info", ["Logistic Support", "<font color='#FF0000'>Cooldown: 15 minutes (passive)</font color><br />Description:<br />This passive ability gives you +1 command point every 15 minutes."]];
};

waitUntil {sleep 2; experience_total>=25};
_handle = [player] execVM "persistent\experience\experience_ability_heal.sqf";
["new_ability",["New ability: Field Surgery","You are really hard to kill, you know that ?"]] call bis_fnc_showNotification;
player createDiaryRecord ["abilities_info", ["Field Surgery", "<font color='#FF0000'>Cooldown: 20 minutes</font color><br />Description:<br />When activated through the radio menu, you will be fully healed after a short period of time"]];

waitUntil {sleep 2; experience_total>=30};
_handle = [player] execVM "persistent\experience\experience_ability_fieldcomm.sqf";
["new_ability",["New ability: Field Commander","Leading the way"]] call bis_fnc_showNotification;
player createDiaryRecord ["abilities_info", ["Field Commander", "<font color='#FF0000'>Cooldown: N/A</font color><br />Description:<br />You can now access the squad manager when you want."]];

waitUntil {sleep 2; experience_total>=35};
_handle = [player] execVM "persistent\experience\experience_ability_warrior.sqf";
["new_ability",["New ability: Veteran Instinct","I think I saw someone around this corner..."]] call bis_fnc_showNotification;
player createDiaryRecord ["abilities_info", ["Veteran Instinct", "<font color='#FF0000'>Cooldown: 10 minutes</font color><br />Description:<br />When activated through the radio menu, for 60 seconds you will know if the zone in a radius of 50 meters around you is clear of enemies or not."]];

waitUntil {sleep 2; experience_total>=45};
_handle = [player] execVM "persistent\experience\experience_ability_refit.sqf";
["new_ability",["New ability: Field Repair","Did someone say MacGyver ?"]] call bis_fnc_showNotification;
player createDiaryRecord ["abilities_info", ["Field Repair", "<font color='#FF0000'>Cooldown: 1 hour</font color><br />Description:<br />When activated through the radio menu, the vehicle in which you are inside will be repaired, and a little bit of fuel added."]];

waitUntil {sleep 2; experience_total>=55};
if (!isMultiplayer) then {
    _handle = [player] execVM "persistent\experience\experience_ability_logistic.sqf";
    ["new_ability",["New ability: Logistic Support","They're sending lots of ressources your way"]] call bis_fnc_showNotification;
    player createDiaryRecord ["abilities_info", ["Logistic Support", "<font color='#FF0000'>Cooldown: 15 minutes (passive)</font color><br />Description:<br />This passive ability gives you +1 command point every 15 minutes."]];
} else {
    _handle = [player] execVM "persistent\experience\experience_ability_logistic_boost.sqf";
    ["new_ability",["New ability: Logistic Boost","We are committed to winning."]] call bis_fnc_showNotification;
    player createDiaryRecord ["abilities_info", ["Logistic Boost", "<font color='#FF0000'>Cooldown: 30 minutes (passive)</font color><br />Description:<br />This passive ability gives you +5 command point every 30 minutes."]];
};