/// @description Insert description here
// You can write your code in this editor


// Gera as posições randomicas
randomize()
velocidade = 2;
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);


// Estado
// Codigo referencia o script com a funcao andando player
estado = src_player_red_andando;