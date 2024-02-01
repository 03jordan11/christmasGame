/// @description Insert description here
// You can write your code in this editor


if(global.showText && displayGui){
	draw_set_font(ARCO_script_font)
	draw_set_color(c_dkgray)
	var spriteWidth = sprite_get_width(text_box_spr)
	var sidePadding = 20
	var topPadding = 20
	var textWidth = spriteWidth - (sidePadding * 2)
	var sep = 1.0
	
	draw_sprite(text_box_spr, 0, 300, 200)
	draw_text_ext(300 + sidePadding, 200 + topPadding, currentTextToDisplay, 28, textWidth)
}



