//0 setFog [0.1, 0.09, 10]
// 1ère valeur: --> INTENSITE BROUILLARD
// 2ème valeur: rester entre 0.01(haut) et 0.1(bas)  --> hauteur brouillard
// 3ème valeur: mieux vaut rester à 10 --> hauteur de base

//  fog
// tropical --> intensité (0.3 - 0.9) Hauteur totalement variable
// mediter  --> intensité (0.5 - 0.0)
// tempéré  --> intensité (0.75 - 0.0)
// tempéré froid  --> intensité (0.75 - 0.0)
// aride 0

// 0 setOvercast 0.9
// tempéré 0.3 - 0.8
// tempéré froid 0.4 - 0.8
// tropical 0 - 1
// medit 0 - 0.6
// aride 0 - 0.3

_weather_loop = true;
if (isMultiplayer) then {
    _handle = [] execVM "dialog\startup\weather_broadcast.sqf";
};

switch (weather_type) do {
    case "tropical": {
        while {_weather_loop} do {
            _wait_after = random 1800; // EN SECONDES

            _fog_time = random 60; // EN MINUTES !!
            _fog_time = (_fog_time * 60); // transforme en secondes
            _fog_intensity = random 6;
            _fog_intensity = (_fog_intensity / 10); // transforme en dixèmes
            _fog_intensity = (_fog_intensity + 0.3); // donne la valeur min
            if (_fog_intensity<0.01) then {_fog_intensity = 0.01};
            _fog_height = random 1;
            _fog_height = (_fog_height / 10); // transforme en centiemes
            if (_fog_height<0.1) then {_fog_height = 0.1};
            diag_log format ["DUWS-R DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];
            _fog_time setFog [_fog_intensity, _fog_height, 10];

            _overcast_intensity = random 1;
            20 setOvercast _overcast_intensity;

            _wait_total = _fog_time + _wait_after;
            _wait_total_minute = _wait_total / 60;
            sleep (_wait_total);
        }; //end while
    }; //end case
    case "arid": {
        while {_weather_loop} do {
            _wait_after = random 1800; // EN SECONDES

            _fog_time = random 60; // EN MINUTES !!
            _fog_time = (_fog_time * 60); // transforme en secondes

            1 setFog [0.01, 0.01, 0.01];

            _overcast_intensity = random 3;
            _overcast_intensity = (_overcast_intensity / 10); // transforme en dixièmes
            20 setOvercast _overcast_intensity;

            _fog_time = 0;
            _wait_total = _fog_time + _wait_after;
            _wait_total_minute = _wait_total / 60;
            sleep (_wait_total);
        }; //end while
    };
    case "temperate": {
        while {_weather_loop} do {
            _wait_after = random 1800; // EN SECONDES

            _fog_time = random 60; // EN MINUTES !!
            _fog_time = (_fog_time * 60); // transforme en secondes
            _fog_intensity = random 8;
            _fog_intensity = (_fog_intensity / 10); // transforme en dixèmes
            if (_fog_intensity<0.01) then {_fog_intensity = 0.01};
            _fog_height = random 1;
            _fog_height = (_fog_height / 10); // transforme en centiemes
            if (_fog_height<0.1) then {_fog_height = 0.1};
            diag_log format ["DUWS-R DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];
            _fog_time setFog [_fog_intensity, _fog_height, 10];

            _overcast_intensity = random 5;
            _overcast_intensity = (_overcast_intensity / 10); // transforme en dixièmes
            _overcast_intensity = (_overcast_intensity + 0.3);  // ajoute la val min
            20 setOvercast _overcast_intensity;

            _wait_total = _fog_time + _wait_after;
            _wait_total_minute = _wait_total / 60;
            sleep (_wait_total);
        }; //end while
    };
    case "temperate_cold": {
        while {_weather_loop} do {
            _wait_after = random 1800; // EN SECONDES

            _fog_time = random 60; // EN MINUTES !!
            _fog_time = (_fog_time * 60); // transforme en secondes
            _fog_intensity = random 8;
            _fog_intensity = (_fog_intensity / 10); // transforme en dixèmes
            if (_fog_intensity<0.01) then {_fog_intensity = 0.01};
            _fog_height = random 1;
            _fog_height = (_fog_height / 10); // transforme en centiemes
            if (_fog_height<0.1) then {_fog_height = 0.1};
            diag_log format ["DUWS-R DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];
            _fog_time setFog [_fog_intensity, _fog_height, 10];

            _overcast_intensity = random 4;
            _overcast_intensity = (_overcast_intensity / 10); // transforme en dixièmes
            _overcast_intensity = (_overcast_intensity + 0.4);  // ajoute la val min
            20 setOvercast _overcast_intensity;

            _wait_total = _fog_time + _wait_after;
            _wait_total_minute = _wait_total / 60;
            sleep (_wait_total);
        }; //end while
    };
    case "mediterranean": {
        while {_weather_loop} do {
            _wait_after = random 1800; // EN SECONDES

            _fog_time = random 60; // EN MINUTES !!
            _fog_time = (_fog_time * 60); // transforme en secondes
            _fog_intensity = random 5;
            _fog_intensity = (_fog_intensity / 10); // transforme en dixèmes
            if (_fog_intensity<0.01) then {_fog_intensity = 0.01};
            _fog_height = random 1;
            _fog_height = (_fog_height / 10); // transforme en centiemes
            if (_fog_height<0.1) then {_fog_height = 0.1};
            diag_log format ["DUWS-R DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];
            _fog_time setFog [_fog_intensity, _fog_height, 10];

            _overcast_intensity = random 6;
            _overcast_intensity = (_overcast_intensity / 10); // transforme en dixièmes
            20 setOvercast _overcast_intensity;
            diag_log format ["DUWS-R DEBUG: %3 setOvercast %1", _overcast_intensity];

            _wait_total = _fog_time + _wait_after;
            _wait_total_minute = _wait_total / 60;
            sleep (_wait_total);
        }; //end while
    };
};