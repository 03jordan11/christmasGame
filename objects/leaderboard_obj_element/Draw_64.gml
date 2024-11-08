/// @description Insert description here
// You can write your code in this editor


//draw_rectangle(x, y, x + width, y + height, 1);
//draw_text(x, y, name);


if (text != "" and text != "-4")
{
	switch(text_align){
		case "center":
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			
			draw_text_transformed_color(x + (width / 2) * 1, y + (height / 2) * 1, text, fit_text_in_box(text, width, text_scale), fit_text_in_box(text, width, text_scale), 0, color, color, color, color, 1)

			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			break;
			
		case "left":
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
		
			draw_text_transformed_color(x + text_h_padding, y + (height / 2) * 1, text, fit_text_in_box(text, width, text_scale), fit_text_in_box(text, width, text_scale), 0, color, color, color, color, 1)

			draw_set_halign(fa_center)
			draw_set_valign(fa_top)
			break;
			
		case "right":
			draw_set_halign(fa_right)
			draw_set_valign(fa_middle)
			
			draw_text_transformed_color(x + width - text_h_padding, y + (height / 2) * 1, text, fit_text_in_box(text, width, text_scale), fit_text_in_box(text, width, text_scale), 0, color, color, color, color, 1)

			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			break;
	}
}

if (sprite_background) {
	draw_sprite_stretched(settingTray_spr, 0, x, y, width, height)
} else if (title_sprite_background) {
	draw_sprite_stretched(settingSelectedTray_spr, 0, x, y, width, height)
}


