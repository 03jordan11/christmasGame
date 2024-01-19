/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_gray)
draw_roundrect(x, y, x + width, y + height, 0)
draw_set_color(-1)

var _size = ds_list_size(list)
var _scaleFactor = .5

for (var i = 0; i < _size; i++) {
		
	var _arr = list[| i]
	var _name = _arr[GameOption.NAME]
	var _sel = _arr[GameOption.SELECTED]
	var _vals = _arr[GameOption.VALUES]
	
	var _x = x + paddingX
	var _y = y + paddingY + (optionHeight * i) + (optionSpacing * i)
	
	if (i != hoverId) {
		draw_set_color(c_white)	
	} else {
		draw_set_color(c_green)	
	}
		
	draw_text_transformed(_x, _y, _name, _scaleFactor, _scaleFactor, 0)
	
	if (_sel > -1) {
		var _val = _vals[_sel]
		draw_set_halign(fa_right)
		draw_text_transformed(x + width - paddingX, _y, _val, _scaleFactor, _scaleFactor, 0)
		draw_set_halign(fa_left)
	}
	
}