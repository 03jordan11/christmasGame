/// @description Insert description here
// You can write your code in this editor

var scaleFactorNormal = .9
var scaleFactorHover = 1

var scaleFactor = isHovered ? scaleFactorHover : scaleFactorNormal

draw_text_transformed(x - ((string_width(global.mainMenuStartText) * scaleFactor) / 2), y, global.mainMenuStartText, scaleFactor,scaleFactor,0)

function executeAction(){
	if(!global.settingsMenuIsOpen){
		room_goto(SantasWorkshop)
	}
}