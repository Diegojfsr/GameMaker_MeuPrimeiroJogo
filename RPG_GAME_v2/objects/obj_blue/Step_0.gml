/// @description Insert description here
// You can write your code in this editor


script_execute(estado);

if alarm[1] <= 0{
	estamina += 1;
}
estamina = clamp(estamina, 0, max_estamina)

if alarm[2] <= 0{
	ataque += 1;
}
ataque = clamp(ataque, 0, max_ataque)



// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0); 




