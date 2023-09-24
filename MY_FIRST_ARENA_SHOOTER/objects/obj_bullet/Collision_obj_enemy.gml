/// @description Insert description here
// You can write your code in this editor


// Esse código subtrairá 1 de QUALQUER instância de "obj_enemy".
obj_enemy.hp = obj_enemy.hp - 1;



// Depois de retirarmos o ponto da variável "hp", 
// chamamos uma função para destruir a instância de chamada (o marcador).
with (other)
{
    hp = hp - 1;
}
instance_destroy();


// Reseta o jogo sempre que tem uma colisao com o inimigo
game_restart();




// ----------------------------------------------

