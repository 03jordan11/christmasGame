/// @description Insert description here
// You can write your code in this editor

var _mouseX = device_mouse_x_to_gui(0)
var _mouseY = device_mouse_y_to_gui(0)
var _mousePress = mouse_check_button_pressed(mb_left)

var _size = ds_list_size(list)

for (var i = 0; i < _size; i++) {
	
	var _arr = list[| i]
	var _name = _arr[GameOption.NAME]
	var _sel = _arr[GameOption.SELECTED]
	var _vals = _arr[GameOption.VALUES]
	
	var _x1 = x + paddingX
	var _y1 = y + paddingY + (optionHeight * i) + (optionSpacing * i)
	var _x2 = x + width - paddingX
	var _y2 = _y1 + optionHeight
	
	var _hover = point_in_rectangle(_mouseX, _mouseY, _x1, _y1, _x2, _y2)
		
	if (_hover) {
	
		hoverId = i
		
		if (_sel == -1 && _mousePress) {
			switch (_name) {
				case "Close":
					instance_destroy()
				break
			}
		}
		
		if (_sel > -1) {
			var _wheel = mouse_wheel_up() - mouse_wheel_down()
			
			if (_wheel != 0) {
				_sel += _wheel
				
				_sel = clamp(_sel, 0, array_length(_vals) - 1)
				
				_arr[@ GameOption.SELECTED] = _sel
				
				if (type == ListType.MAIN_MENU_OPTIONS) {
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
					}
				}
			}
		}
	}
}