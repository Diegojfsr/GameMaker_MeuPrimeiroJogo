/// @description Insert description here
// You can write your code in this editor


script_execute(estado);

if alarm[1] <= 0{
	estamina += 1;
}

estamina = clamp(estamina, 0, max_estamina)