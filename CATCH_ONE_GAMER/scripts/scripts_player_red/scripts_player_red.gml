// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



#region Funcao Verificar Players Proximos
// Funcao para verificar se o player blue esta proximo
function scr_palyer_red_checar_player_blue(){
	if distance_to_object(obj_player_blue) <= dist_atk{
		estado = scr_player_red_perseguindo;
	}
}
#endregion

#region Funcao escolher o estado(parando / andando)
// Funcao princial
// Palyer escolhe de forma random se ele vai se movimentar ou ficar parado
function scr_player_red_escolher_estado(){
	scr_palyer_red_checar_player_blue()
	
	prox_estado = choose(scr_player_red_andando, scr_player_red_parado);
	if prox_estado == scr_player_red_andando{
		estado = scr_player_red_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}
	else if prox_estado == scr_player_red_parado{
		estado = scr_player_red_parado;
	}
}
#endregion

#region Funcao Colosao 
// Function Colisao
function scr_player_red_colisao(){
	//Colisao player parede
	if place_meeting(x + hveloc, y, obj_left ){
		while !place_meeting(x + sign(hveloc), y, obj_left ){
		x += sign(hveloc);
		}
	hveloc = 0;
	}
	x += hveloc;

	if place_meeting(x, y  +vveloc, obj_left ){
		while !place_meeting(x, y + sign(hveloc), obj_left ){
		y += sign(vveloc);
		}
	vveloc = 0;
	}
	y += vveloc;
}
#endregion

#region Funcao Andando
function scr_player_red_andando(){
	scr_palyer_red_checar_player_blue()
	
	image_speed = 1;
		var _dir = point_direction(x, y, dest_x, dest_y);
		hveloc = lengthdir_x(veloc, _dir);
		vveloc = lengthdir_y(veloc, _dir);
}
#endregion

#region Function Parado
function scr_player_red_parado(){
	scr_palyer_red_checar_player_blue()
	image_speed = 0.5;
}
#endregion

#region Function Perseguir
function scr_player_red_perseguindo(){
	image_speed = 1.5;

	dest_x = obj_player_blue.x;
	dest_y = obj_player_blue.y;

	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc_perseg, _dir);
	vveloc = lengthdir_y(veloc_perseg, _dir);

	scr_player_red_colisao();

	if distance_to_object(obj_player_blue) >= dist_noatk{
		estado = scr_player_red_escolher_estado;
		alarm[0] = irandom_range(120, 240);
	}
}
#endregion

#region Function Atirar
// Funcao para criar os tiros  do player
function scr_player_red_atirando(){
	// Shooting
	// Codigo que gera os tiros 
	if municao >= 10{
		if (mouse_check_button(mb_left)) && (cooldown < 1){
			municao -= 10;//controla a municao
			alarm[1] = 180;
		    instance_create_layer(x, y, "BulletsLayer", obj_bullet);
		    cooldown = 10;
		}
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;
	}

}


function scr_player_red_municao(){
	// Controla a municao
	if alarm[1] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
}

#endregion



























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




