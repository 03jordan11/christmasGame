/// @description Insert description here
// You can write your code in this editor

//set a minimum time for each spawn, that way nothing clusters together
//set a max time
//each time a "random" conveyer needs to be selected
//conveyor can't be selected more than twice
if(alarm[0] == -1 && !global.isPaused){
	alarm[0] = irandom_range(minTime, maxTime)
}

