// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_continue(){
	var border = 28
	var bg_width = 468; // Adjust this value based on your desired background width
	var bg_height = 100; // Adjust this value based on your desired background height
	var bg_x = 830-border; // X-coordinate of the background
	var bg_y = 650-border;
	draw_sprite_stretched_ext(textbox_spr, 0, bg_x, bg_y, bg_width, bg_height, c_white, 1);
	
	draw_text_transformed(980, 640, "Continue", .5, .5, 0)
	draw_sprite(Space_Key, 0,830, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 900, 640)
	if (wrapPresentInput()){
		endGameSetup()
	}
}

function draw_final_level(){
	var border = 28
	var bg_width = 510; // Adjust this value based on your desired background width
	var bg_height = 100; // Adjust this value based on your desired background height
	var bg_x = 785-border; // X-coordinate of the background
	var bg_y = 650-border;
	draw_sprite_stretched_ext(textbox_spr, 0, bg_x, bg_y, bg_width, bg_height, c_white, 1);

	draw_text_transformed(935, 640, "Main Menu", .5, .5, 0)
	draw_sprite(Space_Key, 0,785, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 855, 640)
	if (wrapPresentInput()){
		endGameSetup()
		room_goto(NewMainMenu)
	}
}

function draw_bells(){
	if(!pause_obj._settingsMenuEnabled){
		var startX = 800
		var startY = 16
		var sprWidth = 86
		for(var i = 0; i < 5; i++){
			if(i < global.health){
				draw_sprite(bell_spr,0, startX + (i * sprWidth), startY)
			}else{
				draw_sprite(bell_blank_spr,0, startX + (i * sprWidth), startY)
			}
		}
	}
}

function levelFailGui(){
	if(global.wrappingSound != "" && audio_exists(global.wrappingSound) && audio_is_playing(global.wrappingSound)){
		audio_stop_sound(global.wrappingSound)
	}
	global.isPaused = true
	var lay = layer_create(-19999, "levelFail")
	global.laySeq = layer_sequence_create(lay, 0, 0, levelFail_sq)
	global.isGameOver = true
}

function levelFailInputGui(){
	var border = 28
	var bg_width = 375; // Adjust this value based on your desired background width
	var bg_height = 100; // Adjust this value based on your desired background height
	var bg_x = 80-border; // X-coordinate of the background
	var bg_y = 650-border;
	draw_sprite_stretched_ext(textbox_spr, 0, bg_x, bg_y, bg_width, bg_height, c_white, 1);
	draw_text_transformed(230, 640, "Retry", .5, .5, 0)
	draw_sprite(Space_Key, 0,80, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 150, 640)
	if(wrapPresentInput()){
		endGameSetup(true)
		room_restart()
	}
	
	
	bg_width = 325; // Adjust this value based on your desired background width
	bg_x = 960-border; // X-coordinate of the background

	draw_sprite_stretched_ext(textbox_spr, 0, bg_x, bg_y, bg_width, bg_height, c_white, 1);
	draw_text_transformed(1080, 640, "Menu", .5, .5, 0)
	draw_sprite(Esc_Key, 0,960, 650)
	draw_sprite(button_xbox_digital_b_4, 0, 1000, 640)
	if(cancelInput()){
		endGameSetup(true)
		room_goto(NewMainMenu)
	}
}