/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_gray)
draw_roundrect(x, y, x + width, y + height, 0)
draw_set_color(-1)

var _size = ds_list_size(list)
var _scaleFactor = .5

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _mousePress = mouse_check_button_pressed(mb_left);

for (var i = 0; i < _size; i++) {
			
	var _arr = list[| i]
	var _name = _arr[GameOption.NAME]
	var _sel = _arr[GameOption.SELECTED]
	var _vals = _arr[GameOption.VALUES]
	
	var _x = x + paddingX
	var _y = y + paddingY + (optionHeight * i) + (optionSpacing * i)
	
	var _incDecPaddingX = 20
	var _incDecPaddingBottom = 5
	var _incDecSpriteColor = c_white
	
	if (i != hoverId) {
		draw_set_color(c_white)	
	} else {
		draw_set_color(c_green)	
		_incDecSpriteColor = c_green
	}
		
	draw_text_transformed(_x, _y, _name, _scaleFactor, _scaleFactor, 0)
	
	if (_sel > -1) {
        var _val = _vals[_sel]
        var _val_width = string_width(_val) * _scaleFactor
        
        var _val_x = x + width -  paddingX - sprite_get_width(decrease_setting_spr) - sprite_get_width(increase_setting_spr)
        
        var _dec_x = _val_x - _val_width / 2 - sprite_get_width(decrease_setting_spr) * _scaleFactor
        draw_sprite_ext(decrease_setting_spr, 0, _dec_x - _incDecPaddingX, _y + sprite_get_height(decrease_setting_spr) - _incDecPaddingBottom, 1, 1, 0, _incDecSpriteColor, 1)

		draw_set_halign(fa_center)
        draw_text_transformed(_val_x, _y, _val, _scaleFactor, _scaleFactor, 0)
        
        var _inc_x = _val_x + _val_width / 2 + _incDecPaddingX * 2
        draw_sprite_ext(increase_setting_spr, 0, _inc_x, _y + sprite_get_height(increase_setting_spr) - _incDecPaddingBottom, 1, 1, 0, _incDecSpriteColor, 1)
  
        draw_set_halign(fa_left)
	}
	
}