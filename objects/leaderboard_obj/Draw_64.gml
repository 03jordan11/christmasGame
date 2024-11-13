/// @description Insert description here
// You can write your code in this editor


//draw bkg overlay
draw_sprite(overlay_spr, 0, 0, 0)

//draw menu bkg
draw_sprite(settingsBkg_spr, 0, 0, 0)

var botX = 1000
var botY = 660

draw_sprite(settingsBtnBkg_spr, 0, botX-40, botY)

if(global.usingController){
	draw_sprite(xbox_b_32x32, 0, botX, botY+7)
}else{
	draw_sprite(Esc_Key, 0, botX, botY+6)
}

draw_set_font(settingsOptions_font)
draw_text_transformed_color(botX + 50, botY + 8, "Back", 1, 1, 0, c_black, c_black, c_black, c_black, 1)
draw_set_font(mainMenu_font)

backButtonHovered = point_in_rectangle(mouse_x, mouse_y, botX-50, botY, botX-40 + sprite_get_width(settingsBtnBkg_spr), botY + sprite_get_height(settingsBtnBkg_spr))


