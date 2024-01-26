/// @description Insert description here
// You can write your code in this editor

width = 400
height = 800

optionHeight = 48
paddingX = 128
paddingY = 48
optionSpacing = 24

list = ds_list_create()

hoverId = 0

inputCooldown = 0
cooldownTime = .4

isGamepad = false

function checkIsIncDecHovered(_x, _y, _sprite_width, _sprite_height, _mouseX, _mouseY){
	var _left = _x - _sprite_width / 2;
    var _top = _y - _sprite_height / 2;
    var _right = _x + _sprite_width / 2;
    var _bottom = _y + _sprite_height / 2;
	
	return point_in_rectangle(_mouseX, _mouseY, _left, _top, _right, _bottom)
}

function updateSetting(_name, _sel){
	switch (_name) {
		case "Main Volume":
			global.masterVol = _sel
		break
		case "Sound Effects Volume":
			global.sfxVol = _sel
		break
		case "Music Volume":
			global.musicVol = _sel
		break		
		case "Wrapping Type":
			global.wrappingType = _sel
		break
		case "Fullscreen":
			global.fullscreen = _sel
			setFullscreen(global.fullscreen)
		break	
	}
}

function getSetting(_name){
	switch (_name) {
		case "Main Volume":
			return global.masterVol
		case "Sound Effects Volume":
			return global.sfxVol
		case "Music Volume":
			return global.musicVol
		case "Wrapping Type":
			return global.wrappingType
		case "Fullscreen":
			return global.fullscreen
	}
}
