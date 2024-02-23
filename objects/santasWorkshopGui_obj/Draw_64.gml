  /// @description Insert description here
// You can write your code in this editor

draw_set_font(ARCO_main_menu_font)
draw_set_color(c_green)
draw_text_transformed(scoreX, scoreY, string(global.score), .5, .5, 0)

draw_text_transformed(1000, 45, string(global.levelTimeSeconds), .5, .5, 0)

if (endScoreInPosition){
	if (global.currentLevel == 5){
		draw_final_level()
	}
	else{
		draw_continue()
	}

}
