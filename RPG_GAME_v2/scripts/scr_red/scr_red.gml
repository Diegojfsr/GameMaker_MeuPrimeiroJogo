

function scr_red_colisao(){
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

function scr_red_checar_blue(){
	if distance_to_object(obj_blue) <= dist_aggro{
		escrever_estado = "PERSEGUINDO";
		estado = scr_red_perseguindo;
	}
	
	if distance_to_object(obj_blue) <= dist_atirando{
		escrever_estado = "ATACANDO";
		estado = scr_red_atirando;
	}
}


function scr_red_escolher_estado(){
	scr_red_checar_blue();//checa se o blue esta perto
	prox_estado = choose(scr_red_andando, scr_red_parado);

	if prox_estado == scr_red_andando{
		escrever_estado = "ANDANDO";
		estado = scr_red_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}
	else if prox_estado == scr_red_parado{
		escrever_estado = "PARADO";
		estado = scr_red_parado;
	}
}



function scr_red_andando(){
	scr_red_checar_blue();//checa se o blue esta perto

	
	if distance_to_point(dest_x, dest_y) > veloc{
		var _dir = point_direction(x, y, dest_x, dest_y);
		hveloc = lengthdir_x(veloc, _dir);
		vveloc = lengthdir_y(veloc, _dir);
		scr_red_colisao()
		//x += hveloc;
		//y += vveloc;
	}else{
		x = dest_x;
		y = dest_y;
	}
}

  
function scr_red_parado(){
	scr_red_checar_blue();//checa se o blue esta perto
	//image_speed = 0.5;
}

// Funcao perseguir
function scr_red_perseguindo(){

	dest_x = obj_blue.x;
	dest_y = obj_blue.y;

	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc_perseg, _dir);
	vveloc = lengthdir_y(veloc_perseg, _dir);
	estado = scr_red_atacando;//chama a funcao para atacar
	scr_red_colisao();
	
	if distance_to_object(obj_blue) >= dist_desaggro{
		estado = scr_red_escolher_estado;
		alarm[0] = irandom_range(120, 240);
	}
}

// Fucao Perseguir
// Fucoes de Perseguicao
function scr_red_atacando(){
	if atacar == false{
		instance_create_layer(x, y, "Instances", obj_red_hitbox);
		ataque -= 10;
		alarm[3] = 180;
		alarm[2] = 300;
		atacar = true;
		//------- restarta ataque
		estado = scr_red_escolher_estado;
		atacar = false;
	}
}





// Funcao Atirar
// Funcao para criar os tiros  do player
function scr_red_atirando(){
	instance_create_layer(x, y, "Instances", obj_red_powerball);
	 
}


























