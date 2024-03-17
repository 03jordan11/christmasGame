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
	//draw background
	draw_sprite_stretched_ext(textbox_spr, 0, _menuX, _menuY, _menuWidth, _menuHeight, c_white, 1)
	//draw options	
	var _textHeight = 0
	var _textPadding = 10
	for(var i = 0; i < array_length(_options); i++){
		
		if(i == _selected){
			draw_circle(_menuX+32, _menuY + _textHeight + 28 + 32, 10, false)
			draw_text_transformed(_menuX + 28 + 28, _menuY + _textHeight + 28, _options[i], .6, .6, 0)
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
				break;
			case 1:
				//restart level
				endGameSetup(true)
				room_restart()
				break;
			case 2: 
				//how to play
				break;
			case 3:
				//quit
				room_goto(MainMenu)
		}
	}
	
}