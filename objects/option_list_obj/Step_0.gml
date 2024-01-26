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
	
		if(!isGamepad){
			hoverId = i	
		}
		
		if (_sel == -1 && mouse_check_button_released(mb_left)) {
			switch (_name) {
				case "Close":
					instance_destroy()
					return
			}
		}
		
		if (_sel > -1) {
			var _wheel = mouse_wheel_up() - mouse_wheel_down()
			
			if (_wheel != 0) {
				_sel += _wheel
				
				_sel = clamp(_sel, 0, array_length(_vals) - 1)
				
				_arr[@ GameOption.SELECTED] = _sel
				
				if (type == ListType.MAIN_MENU_OPTIONS) {
					updateSetting(_name, _sel)					
				}
			}
		}
	}
	
	// Controller support
	inputCooldown -= 1 / game_get_speed(gamespeed_fps)
	
	if(inputCooldown <= 0){
		// Controller move down
		if(gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > .5){
			hoverId = clamp(hoverId + 1, 0, _size-1)
			inputCooldown = cooldownTime
			isGamepad = true
		}
	
		// Controller move up
		if(gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -.5){
			hoverId = clamp(hoverId - 1, 0, _size-1)
			inputCooldown = cooldownTime
			isGamepad = true
		}
		
		// Controller decriment setting
		if(gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -.5){
			if(_sel > -1 && hoverId == i){
				var _selClamped = clamp(_sel-1, 0, array_length(_vals) - 1)
				updateSetting(_name, _selClamped)	
				_arr[@ GameOption.SELECTED] = getSetting(_name)
				inputCooldown = cooldownTime
				isGamepad = true
			}
		}
		
		// Controller incriment setting
		if(gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > .5){
			if(_sel > -1 && hoverId == i){
				var _selClamped = clamp(_sel+1, 0, array_length(_vals) - 1)
				updateSetting(_name, _selClamped)
				_arr[@ GameOption.SELECTED] = getSetting(_name)
				inputCooldown = cooldownTime
				isGamepad = true
			}
		}
		
		// Close settings with the close button
		if(gamepad_button_check(0, gp_face1) && _sel == -1 && hoverId == i){
			switch (_name) {
				case "Close":
					instance_destroy()
					return
			}
		}
		
		// Close settings with back button
		if(gamepad_button_check(0, gp_face2)){
			instance_destroy()	
			return
		}		
	}	
}