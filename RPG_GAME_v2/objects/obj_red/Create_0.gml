/// @description Insert description here
// You can write your code in this editor


randomize();
estado = scr_red_escolher_estado;
prox_estado = 0;

hveloc = 0;
vveloc = 0;
veloc = 1;


dest_x = 0;
dest_y = 0;

alarm[0] = 1;

escrever_estado = estado;//escreve o estado q o red se encontra

// Perseguicao
veloc_perseg = 2;
dist_aggro = 300;
dist_desaggro = 300;


// Ataque boll
dist_atirando = 200;
dist_desatirando = 200;

// Municao
// Codigo para controlar a municao do player
max_municao = 100;
municao = max_municao;

// Diminuir um pouco a cadência de tiro
cooldown = 0;



//Combate
vida = 5;

empurrar_dir = 0;
empurrar_veloc = 0;
hit = false;

//atacar
dano = 1;
atacar = false;


max_ataque = 5;
ataque = max_ataque;

// Estado
estado = scr_red_escolher_estado;








