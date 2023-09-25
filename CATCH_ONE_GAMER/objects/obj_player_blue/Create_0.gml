/// @description Insert description here
// You can write your code in this editor

// Movimentacao do player
// Configurações dos movimentos do player
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;

veloc = 2;
dir = 0;


// Dash
// Configurações do modeo Dash
dash_dir = -1;
dash_veloc = 6;


// Estado
// Codigo referencia aos scripts com as funcões do player
estado = scr_player_blue_andando;
estado2 = scr_player_blue_atirando;
estado3 = scr_player_blue_ativa_dash;
estado4 = scr_player_blue_municao;
estado5 = scr_player_blue_qtd_dash;
estado6 = scr_player_blue_colisao;





// Municao
// Codigo para controlar a municao do player
max_municao = 100;
municao = max_municao;


// qtd_dash
// Codigo para controlar a qtd_dash Player (estamina)
max_qtd_dash = 100;
qtd_dash = max_qtd_dash;










// Diminuir um pouco a cadência de tiro
cooldown = 0;

