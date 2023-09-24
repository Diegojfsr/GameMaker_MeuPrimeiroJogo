/// @description Insert description here
// You can write your code in this editor

/*
// Este evento executa todos os frames do jogo e nele vamos verificar se há uma instância de jogador na sala, 
// e se for encontrada iremos em direção a ela.
if (instance_exists(obj_player))
{
    move_towards_point(obj_player.x, obj_player.y, spd);
}

// Esta linha funciona para girar a instância na direção do movimento.
image_angle = direction;


// verificação para ver se a variável "hp" que inicializamos anteriormente é menor ou igual a 0.
// Se for, destruiremos a instância (removê-la da sala de jogo). 
if (hp) <= 0 instance_destroy();


*/


var dist = point_distance(x, y, destinox, destinoy);

if dist >= 10
	move_towards_point(destinox, destinoy, velocidade)
else{
	destinox   = random_range(64, room_width-64);
	destinoy   = random_range(64, room_height-64);
}