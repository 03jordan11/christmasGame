/// @description Insert description here
// You can write your code in this editor

var scaleFactorNormal = .6
var scaleFactorHover = .7

var scaleFactor = isHovered ? scaleFactorHover : scaleFactorNormal

draw_text_transformed(x - ((string_width(global.mainMenuSettingsText) * scaleFactor) / 2), y, global.mainMenuSettingsText, scaleFactor,scaleFactor,0)

var lineHeight = 5

if (isHovered) {
    var lineY = y + string_height(global.mainMenuSettingsText) * scaleFactor + 2
    var textX = x - ((string_width(global.mainMenuSettingsText) * scaleFactor) / 2)
	var textWidth = string_width(global.mainMenuSettingsText) * scaleFactor
	draw_rectangle(textX, lineY, textX + textWidth, lineY + lineHeight, false);
}