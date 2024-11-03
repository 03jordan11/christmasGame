/// @description Insert description here
// You can write your code in this editor

var scaleFactorNormal = .6
var scaleFactorHover = .7

var scaleFactor = isHovered ? scaleFactorHover : scaleFactorNormal

draw_text_transformed(x - ((string_width(global.mainMenuExitText) * scaleFactor) / 2), y, global.mainMenuExitText, scaleFactor,scaleFactor,0)

var lineHeight = 5

if (isHovered) {
    var lineY = y + string_height(global.mainMenuExitText) * scaleFactor + 2
    var textX = x - ((string_width(global.mainMenuExitText) * scaleFactor) / 2)
	var textWidth = string_width(global.mainMenuExitText) * scaleFactor
	draw_rectangle(textX, lineY, textX + textWidth, lineY + lineHeight, false);
}