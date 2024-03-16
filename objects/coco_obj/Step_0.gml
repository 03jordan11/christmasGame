/// @description Insert description here
// You can write your code in this editor
if (alarm[0] == -1 && !global.isPaused && !global.cocoIsMaking && global.cocoMachineEnabled && !global.cocoIsReady){
	alarm[0] = global.cocoMakingTime * 60
	sprite_index = cocoa_machine_prepare_spr
}




