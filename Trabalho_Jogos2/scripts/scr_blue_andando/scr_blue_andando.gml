

function scr_blue_andando(){

	// Teclas que controlam os movimentos
		direita = keyboard_check(ord("D"));
		cima = keyboard_check(ord("W"));
		esquerda = keyboard_check(ord("A"));
		baixo = keyboard_check(ord("S"));

	// Direcao do Mause
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	// Direcao dos movimentos
		hveloc = (direita - esquerda) * veloc;//velocidade horizontal
		vveloc = (baixo - cima) * veloc;//velocidade vertical
		scr_blue_colisao(); //chama o script da colisao



	// Dash - Esse codigo chama o script do Dash.
	// Esse codigo ainda sera colocado dentro do script propio
	if estamina >= 10{
		if mouse_check_button_pressed(mb_right){
			estamina -= 10;
			alarm[1] = 180;
			alarm[0] = 28;
			dash_dir = point_direction(x, y, mouse_x, mouse_y);
			estado_blue_andando = scr_blue_dash;//chama o script do Dash
		}
	}


	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}	
		
		
		






