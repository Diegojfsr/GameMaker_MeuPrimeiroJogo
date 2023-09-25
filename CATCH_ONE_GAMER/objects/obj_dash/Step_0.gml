/// @description Insert description here
// You can write your code in this editor

// Subtrai a transparencia do obj Dash ate desaparecer
image_alpha -= 0.1;
if image_alpha <= 0{
	instance_destroy();
}



