/// @description Insert description here
// You can write your code in this editor

// Movimento do Player
if (keyboard_check(vk_right)) x += 4;
if (keyboard_check(vk_left)) x -= 4;
if (keyboard_check(vk_up)) y -= 4;
if (keyboard_check(vk_down)) y += 4;

// Girar o Player para ficar sempre de frente para o mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);



// Shooting
// Codigo que gera os tiros 

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
    instance_create_layer(x, y, "BulletsLayer", obj_bullet);
    cooldown = 10;
}
// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
cooldown = cooldown - 1;