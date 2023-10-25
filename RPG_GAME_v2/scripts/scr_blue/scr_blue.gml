// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information




// Fucoes de colisao
function scr_blue_colisao(){

	if place_meeting(x + hveloc, y, obj_parede){
		while !place_meeting(x + sign(hveloc), y, obj_parede){
			x += sign(hveloc);
		}
	hveloc = 0;
	}	
	x += hveloc;

	if place_meeting(x, y + vveloc, obj_parede){
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
		}
	vveloc = 0;
	}
	y += vveloc;
}

// Fucoes de movimento
function scr_blue_movimento(){
// Movimentos
#region movimentos
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	esquerda = keyboard_check(ord("A"));
	baixo = keyboard_check(ord("S"));
#endregion

// Direcao do Mause
image_angle = point_direction(x, y, mouse_x, mouse_y);
	
// Velocidade e colisao
#region velocidade&colisao
	hveloc = (direita - esquerda) * veloc;
	vveloc = (baixo - cima) * veloc;

	scr_blue_colisao();
#endregion

// Dash no click do mouse Dash
#region Dash

if estamina >= 10{
	if mouse_check_button_pressed(mb_right){
		estamina -= 10;
		alarm[1] = 180;
		alarm[0] = 28;
		dash_dir = point_direction(x, y, mouse_x, mouse_y);
		estado = scr_blue_dash;
	}
}
#endregion

// Ataque no click do mouse ataca
#region ataque
if ataque >= 10{
	if mouse_check_button_pressed(mb_left){
		estado = scr_blue_atacando;
		


	}
}
#endregion

}


// Fucoes de Dash
function scr_blue_dash(){
	
	hveloc = lengthdir_x(dash_veloc, dash_dir);
	vveloc = lengthdir_y(dash_veloc, dash_dir);
	
	//x += hveloc;
	//y += vveloc;
	scr_blue_colisao()
}


// Fucoes de Ataque
function scr_blue_atacando(){
	if atacar == false{
		instance_create_layer(x, y, "Instances", obj_blue_hitbox);
		ataque -= 10;
		alarm[3] = 180;
		alarm[2] = 300;
		atacar = true;
		//------- restarta ataque
		estado = scr_blue_movimento;
		atacar = false;
	}
}


function scr_blue_hit(){
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	scr_blue_colisao();
}























