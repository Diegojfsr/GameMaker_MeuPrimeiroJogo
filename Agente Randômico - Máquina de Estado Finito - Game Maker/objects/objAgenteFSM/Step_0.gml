/// @description Insert description here
// You can write your code in this editor
switch(estado){	
	case ESTADOS.PATRULHAR:
		
		
		//Calcular a distância entre o Agente e o Jogador
		var dist = point_distance(x, y, obj_ponto.x, obj_ponto.y);		 
		
		//Chegou perto do jogador, muda de estado
		if dist < 128{
			estado = ESTADOS.FUGIR;
			//Define a velocidade do objeto
			speed = 0;			
		}
		else{	
			ia_patrulhar();
		}
	break;	
	case ESTADOS.FUGIR:
	
	
	break;
}


/**/


