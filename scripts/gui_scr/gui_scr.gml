// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_continue(){
	draw_text_transformed(980, 640, "Continue", .5, .5, 0)
	draw_sprite(Space_Key, 0,830, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 900, 640)
	if (wrapPresentInput()){
		endGameSetup()
	}
}

function draw_final_level(){
	draw_text_transformed(970, 640, "Main Menu", .5, .5, 0)
	draw_sprite(Space_Key, 0,820, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 890, 640)
	if (wrapPresentInput()){
		endGameSetup()
		room_goto(MainMenu)
	}
}

function draw_bells(){
	var startX = 800
	var startY = 16
	var sprWidth = 64
	for(var i = 0; i < global.health; i++){
		draw_sprite(bell_64,0, startX + (i * sprWidth), startY)
	}
}

function levelFailGui(){
	global.isPaused = true
	var lay = layer_create(-19999, "levelFail")
	global.laySeq = layer_sequence_create(lay, 0, 0, levelFail_sq)
}

function levelFailInputGui(){
	draw_text_transformed(230, 640, "Retry", .5, .5, 0)
	draw_sprite(Space_Key, 0,80, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 150, 640)
	if(wrapPresentInput()){
		endGameSetup(true)
		room_restart()
	}
	
	draw_text_transformed(1080, 640, "Menu", .5, .5, 0)
	draw_sprite(Esc_Key, 0,960, 650)
	draw_sprite(button_xbox_digital_b_4, 0, 1000, 640)
	if(cancelInput()){
		endGameSetup(true)
		room_goto(MainMenu)
	}
}