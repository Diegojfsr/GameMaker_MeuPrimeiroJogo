// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_player_blue_andando(){
	
// Girar o Player para ficar sempre de frente para o mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Movimentacao do player
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	esquerda = keyboard_check(ord("A"));
	baixo = keyboard_check(ord("S"));
	// Codigo Colisao
	//hveloc = (direita - esquerda) * veloc;
	//x += hveloc;
	//vveloc = (baixo - cima) * veloc;
	//y += vveloc;
	

}

// Funcao Colisao com as paredes
function scr_player_blue_colisao(){
	hveloc = (direita - esquerda) * veloc;
	//Colisao player parede
	if place_meeting(x + hveloc, y, obj_left ){
		while !place_meeting(x + sign(hveloc), y, obj_left ){
		x += sign(hveloc);
		}
	hveloc = 0;
	}
	x += hveloc;

	vveloc = (baixo - cima) * veloc;
	//Colisao player parede
	if place_meeting(x, y  +vveloc, obj_left ){
		while !place_meeting(x, y + sign(hveloc), obj_left ){
		y += sign(vveloc);
		}
	vveloc = 0;
	}
	y += vveloc;
}


// Funcao para chamar o Dash
function scr_player_blue_ativa_dash(){
	// Codigo que puxa a acao da function Dash
	if mouse_check_button_pressed(mb_right){
		alarm[0] = 25;
		dash_dir = point_direction(x, y, mouse_x, mouse_y);
		estado = scr_player_blue_dash;
	}
}

// Funcao para criar o Dash
function scr_player_blue_dash(){
	hveloc = lengthdir_x(dash_veloc, dash_dir);
	vveloc = lengthdir_y(dash_veloc, dash_dir);
	x += hveloc;
	y += vveloc;
	
	// Cria o objeto dash (velocidade do player)
	var _inst = instance_create_layer(x, y, "Instances", obj_dash);
	_inst.sprite_index = sprite_index;
	
}

// Funcao para controlar QTD de Dash
function scr_player_blue_qtd_dash(){
	// Controla a quantidade de Dash usada(estamina)
	if alarm[2] <= 0{
		qtd_dash += 1;
	}
	qtd_dash = clamp(qtd_dash, 0, max_qtd_dash);


}







// Funcao para criar os tiros  do player
function scr_player_blue_atirando(){
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

function scr_player_blue_municao(){
	// Controla a municao
	if alarm[1] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
}