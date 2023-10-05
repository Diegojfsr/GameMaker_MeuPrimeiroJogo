// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_blue_movimento(){
	// Movimentos
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	esquerda = keyboard_check(ord("A"));
	baixo = keyboard_check(ord("S"));

	// Direcao do Mause
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	// Velocidade e colisao
	hveloc = (direita - esquerda) * veloc;
		if place_meeting(x + hveloc, y, obj_parede){
			while !place_meeting(x + sing(hveloc), y, obj_parede){
				x += sign(hveloc);
			}
		hveloc = 0;
		}	
	x += hveloc;

	vveloc = (baixo - cima) * veloc;
		if place_meeting(x, y + vveloc, obj_parede){
			while !place_meeting(x, y + sing(vveloc), obj_parede){
				y += sign(vveloc);
			}
		vveloc = 0;
		}
	y += vveloc;
	

	// Dash no click do mouse Dash
	if estamina >= 10{
		if mouse_check_button_pressed(mb_right){
			estamina -= 10;
			alarm[1] = 180;
			alarm[0] = 28;
			dash_dir = point_direction(x, y, mouse_x, mouse_y);
			estado = scr_blue_dash;
		}
	}

}

// Fucao do Dash
function scr_blue_dash(){
	
	hveloc = lengthdir_x(dash_veloc, dash_dir);
	vveloc = lengthdir_y(dash_veloc, dash_dir);
	
	x += hveloc;
	y += vveloc;
	
}