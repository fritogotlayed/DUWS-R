_music_list = [
    "Track12_StageC_action",
    "Track12_StageC_negative",
    "Track08_Night_ambient",
    "Track09_Night_percussions",
    "LeadTrack06_F",
    "mad"
];

_tracksAmountIndexed = (count _music_list) - 1;
_dice = round random _tracksAmountIndexed;

_pickedTrack = _music_list select _dice;
//hint format["%1",_pickedTrack];

_pickedTrack 