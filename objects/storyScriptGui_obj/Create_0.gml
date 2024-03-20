/// @description Insert description here
// You can write your code in this editor
displayGui = global.currentLevel != -1
global.pauseDisabled = displayGui
currentTextToDisplay = displayGui ? global.storyScripts[global.currentLevel-1][0] : ""
currTextOrder = 0

global.isPaused = displayGui

//variables for draw
_textboxSprWidth = sprite_get_width(textbox_spr)
_textboxSprHeight = sprite_get_height(textbox_spr)
_maxTextWidth = 700
_padding = 40
_xLoc = (display_get_gui_width() - _maxTextWidth)/2//300
_yLoc = 200
_textHeight = 0

