/// @description Insert description here
// You can write your code in this editor


randomize();

//estado = -1;
prox_estado = 0;

hveloc = 0;
vveloc = 0;
veloc = 1;
veloc_perseg = 1.5;

dest_x = 0;
dest_y = 0;


// Estado
// Codigo referencia aos scripts com as funcões do player
estado = scr_player_red_escolher_estado;
estado2 = scr_player_red_colisao;

estado3 = scr_player_red_atirando;
estado4 = scr_player_red_municao;






// Municao
// Codigo para controlar a municao do player
max_municao = 100;
municao = max_municao;

// Diminuir um pouco a cadência de tiro
cooldown = 0;


alarm[0] = 1;

dist_atk = 100; //Distacia para poder atakar
dist_noatk = 200;//Distacia paraparar de atakar











/*

// Codigo Paulo
// Gera as posições randomicas
randomize()
velocidade = 2;
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);


// Estado
// Codigo referencia o script com a funcao andando player
estado = src_player_red_andando;

*/









