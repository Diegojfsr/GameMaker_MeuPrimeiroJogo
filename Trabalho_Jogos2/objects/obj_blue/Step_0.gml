

script_execute(estado_blue_andando);
script_execute(estado_blue_colisao);
script_execute(estado_blue_dash);
script_execute(estado_blue_atacando);





// Codigo que controla a Estamina.
// Ainda Sera criado um script proprio para a funcao.
	if alarm[1] <= 0{
		estamina += 1;
	}
	estamina = clamp(estamina, 0, max_estamina)


// Codigo que controla a quantidade de ataque.
// Ainda Sera criado um script proprio para a funcao.
	if alarm[2] <= 0{
		ataque += 1;
	}
	ataque = clamp(ataque, 0, max_ataque)








// Codigo para campo infinito
// O objeto entra de um lado e sai do outro lado
move_wrap(true, true, 0);





















