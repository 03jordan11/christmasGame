/// @description Insert description here
// You can write your code in this editor
if (global.currentLevel == -1){
	image_alpha = 0
}else{
	image_alpha = 1
}

_dayToDisplay = 6-global.currentLevel

_sprWidth = sprite_get_width(self.sprite_index)
_sprHeight = sprite_get_height(self.sprite_index)

_centerX = self.x + _sprWidth/2
_centerY = self.y + _sprHeight/2