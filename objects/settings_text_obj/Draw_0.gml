/// @description Insert description here
// You can write your code in this editor

var scaleFactorNormal = .6
var scaleFactorHover = .7

var scaleFactor = isHovered ? scaleFactorHover : scaleFactorNormal

draw_text_transformed(x - ((string_width(global.mainMenuSettingsText) * scaleFactor) / 2), y, global.mainMenuSettingsText, scaleFactor,scaleFactor,0)

