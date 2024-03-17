/// @description Insert description here
// You can write your code in this editor


if(global.isPaused && global.pressedPause){
	

	
	
	var _roomCenterX = room_width / 2;
	var _roomCenterY = room_height / 2;

	// Calculate the dimensions of the pause menu
	var _menuWidth = 550;
	var _menuHeight = string_height(_options[1])/1.4 * array_length(_options);

	// Calculate the top-left position of the pause menu
	var _menuX = _roomCenterX - (_menuWidth / 2);
	var _menuY = _roomCenterY - (_menuHeight / 2);
	
	
	if(_howToPlayEnabled){
	
		var sprWidth = 600
		var sprHeight = _menuY + 64*3
		draw_sprite_stretched_ext(textbox_spr,0,_menuX, _menuY, sprWidth, sprHeight, c_white, 1)
		
		var sprPadding = 28
		
		draw_text_transformed(_menuX + sprPadding, _menuY+ sprPadding, "Movement", .5, .5, 0)
		var textWidth = string_width("Movement") * .5
		draw_sprite(W_Key, 0, _menuX + sprPadding + textWidth + 32, _menuY+ sprPadding -8)
		draw_sprite(A_Key, 0, _menuX + sprPadding + textWidth , _menuY+ sprPadding+24)
		draw_sprite(S_Key, 0, _menuX + sprPadding + textWidth + 32, _menuY+ sprPadding+24)
		draw_sprite(D_Key, 0, _menuX + sprPadding + textWidth + 64, _menuY+ sprPadding+24)
		draw_sprite(button_xboxone_analog_l_direction_11, 0, _menuX + sprPadding + textWidth + 96, _menuY + sprPadding)
		draw_sprite(button_xboxone_dpad_light_7, 0, _menuX + sprPadding + textWidth + 160, _menuY + sprPadding)
		
		draw_text_transformed(_menuX+ sprPadding, _menuY+ sprPadding + 64, "Wrapping", .5, .5, 0)
		var textWidth = string_width("Wrapping") * .5
		draw_sprite(Space_Key, 0, _menuX+ sprPadding + textWidth, _menuY+ sprPadding + 64 + 16)
		draw_sprite(button_xbox_digital_a_4, 0, _menuX+ sprPadding + textWidth + 64, _menuY+ sprPadding + 64)
		
		draw_text_transformed(_menuX+ sprPadding, _menuY+ sprPadding + 64*2, "Coco", .5, .5, 0)
		var textWidth = string_width("Coco") * .5
		draw_sprite(X_Key,0, _menuX+ sprPadding + textWidth, _menuY+ sprPadding + 64*2 + 16)
		draw_sprite(button_xbox_digital_y_4, 0, _menuX+ sprPadding + textWidth + 32, _menuY+ sprPadding + 64*2)
		
		draw_text_transformed(_menuX+ sprPadding, _menuY+ sprPadding + 64*3, "Levers", .5, .5, 0)
		var textWidth = string_width("Levers") * .5
		draw_sprite(E_Key,0,_menuX+ sprPadding + textWidth, _menuY+ sprPadding + 64*3 + 16 )
		draw_sprite(button_xbox_digital_x_4,0,_menuX+ sprPadding + textWidth + 32, _menuY+ sprPadding + 64*3)
	
	}
	else{
		//draw background
		draw_sprite_stretched_ext(textbox_spr, 0, _menuX, _menuY, _menuWidth, _menuHeight, c_white, 1)
		//draw options	
		var _textHeight = 0
		var _textPadding = 10
		for(var i = 0; i < array_length(_options); i++){
			if(i == _selected){
				draw_circle(_menuX+32, _menuY + _textHeight + 32 + 32, 10, false)
				draw_text_transformed(_menuX + 28 + 32, _menuY + _textHeight + 28, _options[i], .6, .6, 0)
				var _optionWidth = string_width(_options[i])/2
				var _yValue = _menuY + _textHeight + 80
			}else{
				draw_text_transformed(_menuX + 28, _menuY + _textHeight + 28, _options[i], .5, .5, 0)
			}
			_textHeight += string_height(_options[i])/2 + _textPadding
		}
		if(moveUp() && _selected > 0){
			_selected -= 1
		}else if(moveDown() && _selected < array_length(_options)-1){
			_selected += 1
		}
	
		if(selecItemInput()){
			switch(_selected){
				case 0:
					//resume game
					global.isPaused = false
					global.pressedPause = false
					break;
				case 1:
					//restart level
					endGameSetup(true)
					room_restart()
					break;
				case 2: 
					//how to play
					_howToPlayEnabled = true
					break;
				case 3:
					//quit
					room_goto(MainMenu)
			}
		}
	}
	
	
}