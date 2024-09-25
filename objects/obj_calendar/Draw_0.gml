/// @description Insert description here
// You can write your code in this editor
draw_self()

if(global.currentLevel != -1){
	draw_set_font(calendar_font)
	draw_text_color(_centerX-5, _centerY, _dayToDisplay, c_black, c_black, c_black, c_black, 1)
}
