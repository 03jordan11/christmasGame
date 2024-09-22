/// @description Insert description here
// You can write your code in this editor
draw_self()

var rectX1=x-30
var rectY1=y-80
var rectX2=x+80
var rectY2=y+10

//draw_rectangle(rectX1, rectY1, rectX2, rectY2, true)
var areaCheck = point_in_rectangle(elf_obj.x, elf_obj.y, rectX1, rectY1, rectX2, rectY2)


if(areaCheck && global.showTips){
	var posX = x
	var posY = y + sprite_height - 10;
	var scaleX = .6
	var scaleY = .6
	draw_set_font(settingsOptions_font)
	draw_sprite_ext(button_xbox_digital_x_4, 0, posX-20, posY, scaleX, scaleY, 0, c_white, 1)
	//draw_text(posX, posY, "/")
	draw_text_ext_transformed_color(posX+20, posY, "|", 1, 500, 1.5, 1.5, 0, c_black,c_black,c_black,c_black, 1)
	draw_sprite(E_Key, 0, posX + 30, posY+5)
}