/// @description Insert description here
// You can write your code in this editor


var up, down, left, right;

up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));

velh = (right - left) * max_vel;
x += velh;
velv = (down - up) * max_vel;
y += velv;