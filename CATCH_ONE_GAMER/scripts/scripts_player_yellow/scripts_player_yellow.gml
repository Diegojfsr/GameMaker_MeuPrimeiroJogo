// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function scr_player_yellow_escolher_estado(){
	prox_estado = choose(scr_player_yellow_andando, scr_player_yellow_parado);
	if prox_estado == scr_player_yellow_andando{
		estado = scr_player_yellow_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}
	else if prox_estado == scr_player_yellow_parado{
		estado = scr_player_yellow_parado;
	}
	
}

function scr_player_yellow_andando(){
	image_speed = 1;
	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	x += hveloc;
	y += vveloc;
	
}


function scr_player_yellow_parado(){
	image_speed = 0.5;
}

























/*
// Codigo Paulo
// Movimentacao do player
function src_player_red_andando(){
	
var dist = point_distance(x, y, destinox, destinoy);
	if dist >= 10
		move_towards_point(destinox, destinoy, velocidade)
	else{
		destinox   = random_range(64, room_width-64);
		destinoy   = random_range(64, room_height-64);
	}


}
*/




