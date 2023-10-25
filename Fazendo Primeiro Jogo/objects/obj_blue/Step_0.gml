/// @description Insert description here
// You can write your code in this editor

// Inicio codigo Movimento
if keyboard_check(vk_up){

speed = 2;

}
else if  keyboard_check(vk_down){
speed = -2;
}
else{
	
speed = 0;

}

if  keyboard_check(vk_left){

direction += 3;

}


if  keyboard_check(vk_right){

direction += -3;

}

image_angle = direction; // Direcao da nave

move_wrap(true, true, 0); // Desaparece a nave de um lado e aparece no outro



// Inicio codigo Tiro


if  keyboard_check_pressed(vk_space){

	var inst = instance_create_layer(x, y, "Instances", obj_projetil);
	inst.speed = 6;
	inst.direction = direction;
	inst.image_angle = direction;
}
















