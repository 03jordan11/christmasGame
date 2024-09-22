/// @description Insert description here
// You can write your code in this editor
draw_self()


if(global.showTips && global.cocoIsReady){
	var posX = x+20
	var posY = y + sprite_height - 100;
	var scaleX = .6
	var scaleY = .6

	draw_sprite_ext(button_xbox_digital_y_4, 0, posX-20, posY, scaleX, scaleY, 0, c_white, 1)
	draw_set_font(settingsOptions_font)
	draw_text_ext_transformed_color(posX+20, posY+4, "|", 1, 500, 1, 1, 0, c_black,c_black,c_black,c_black, 1)
	draw_sprite(X_Key, 0, posX + 30, posY+5)
}