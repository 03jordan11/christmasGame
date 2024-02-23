// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_continue(){
	draw_text_transformed(980, 640, "Continue", .5, .5, 0)
	draw_sprite(SpaceKey, 0,830, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 900, 640)
	if (wrapPresentInput()){
		endGameSetup()
	}
}

function draw_final_level(){
	draw_text_transformed(970, 640, "Main Menu", .5, .5, 0)
	draw_sprite(SpaceKey, 0,820, 650)
	draw_sprite(button_xbox_digital_a_4, 0, 890, 640)
	if (wrapPresentInput()){
		room_goto(MainMenu)
	}
}