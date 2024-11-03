/// @description Insert description here
// You can write your code in this editor
draw_self()

if(global.playerIsWrapping){
	var x1 = x
	var y1 = y
	var x2 = x + 50
	var y2 = y + 10
	
	var totalAmt = 0
	
	//for tapping
	if(global.wrappingType == 0){
		totalAmt = (global.wrappingTimesPressed/global.wrappingTimeButtonPress) * 100
	}else{
		totalAmt = (global.timeSpaceHeld/global.wrappingTimeSeconds) * 100
	}
	
	show_debug_message($"wrappingTimeButtonPress: {global.wrappingTimeButtonPress} wrappingTimesPressed: {global.wrappingTimesPressed}")
	var backCol = c_black
	var barCol = c_green
	var anchor = 0 //left
	var showback = true
	var showborder = true
	
	draw_healthbar(x1, y1, x2, y2, totalAmt, backCol, barCol, barCol, anchor, showback, showborder)
}