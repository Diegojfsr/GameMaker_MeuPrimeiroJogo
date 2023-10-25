
function scr_blue_atacando(){

	if ataque >= 10{
		if atacar == false{
			instance_create_layer(x, y, "Instances", obj_blue_hitbox);
			ataque -= 10;
			alarm[3] = 180;
			alarm[2] = 300;
			atacar = true;
		
			//------- restarta ataque
			atacar = false;
			estado_blue_atacando = scr_blue_andando;	
		}
	}
	
}