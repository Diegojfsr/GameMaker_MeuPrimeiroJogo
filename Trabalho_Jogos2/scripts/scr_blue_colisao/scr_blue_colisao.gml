
// Funcao de colisao com as paredes

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

