/// @description Insert description here
// You can write your code in this editor


if(global.showText && displayGui){
	draw_set_font(ARCO_script_font)
	draw_set_color(c_dkgray)
	 
	_textHeight = string_height_ext(currentTextToDisplay, 28, _maxTextWidth - (2 * _padding))
	_yLoc = (display_get_gui_height() - (_textHeight + (2 * _padding))) / 2;
	
	draw_sprite_ext(textbox_spr, 0, _xLoc, _yLoc, _maxTextWidth/_textboxSprWidth, (_textHeight+(2*_padding))/_textboxSprHeight, 0, c_white, 1)
	
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
    var _textX = _xLoc + (_maxTextWidth / 2);
    var _textY = _yLoc + ((_textHeight + (2 * _padding)) / 2);
	
	draw_text_ext(_textX, _textY, currentTextToDisplay, 28, _maxTextWidth - (2 * _padding))

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}



