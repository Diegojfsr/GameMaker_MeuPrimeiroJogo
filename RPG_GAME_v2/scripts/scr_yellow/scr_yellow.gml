
	
function scr_yellow_escolher_estado(){
	prox_estado = choose(scr_yellow_andando, scr_yellow_parado);
	if prox_estado == scr_yellow_andando{
		estado = scr_yellow_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}
	else if prox_estado == scr_yellow_parado{
		estado = scr_yellow_parado;
	}
	
}

function scr_yellow_andando(){
	image_speed = 1;
	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	x += hveloc;
	y += vveloc;
	
}


function scr_yellow_parado(){
	image_speed = 0.5;
}



