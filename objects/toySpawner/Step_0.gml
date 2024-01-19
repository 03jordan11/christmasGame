/// @description Insert description here
// You can write your code in this editor

//This sets the speed and randomness of toys spawning
if (global.conveyersOn[0] && alarm[0] == -1){
	alarm[0] = irandom_range(global.conveyerSpeed[0][0], global.conveyerSpeed[0][1])
}
if (global.conveyersOn[1] && alarm[1] == -1){
	alarm[1] = irandom_range(global.conveyerSpeed[1][0], global.conveyerSpeed[1][1])
}
if (global.conveyersOn[2] && alarm[2] == -1){
	alarm[2] = irandom_range(global.conveyerSpeed[2][0], global.conveyerSpeed[2][1])
}
if (global.conveyersOn[3] && alarm[3] == -1){
	alarm[3] = irandom_range(global.conveyerSpeed[3][0], global.conveyerSpeed[3][1])
}



