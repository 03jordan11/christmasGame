/// @description Insert description here
// You can write your code in this editor
if (global.conveyersOn[conveyor_id] && !global.isPaused){
	image_speed = 1
}
if (!global.conveyersOn[conveyor_id] || global.isPaused){
	image_speed = 0
}
