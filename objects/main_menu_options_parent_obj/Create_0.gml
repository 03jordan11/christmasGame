/// @description Insert description here
// You can write your code in this editor

x = room_width/2
y =  room_height/2

var itemSpacing = 150
var startY = y - itemSpacing

instance_create_layer(x, startY, "Instances", start_game_text_obj)
instance_create_layer(x, startY + itemSpacing, "Instances", settings_text_obj)
instance_create_layer(x, startY + (itemSpacing * 1.8), "Instances", exit_game_text_obj)

isHovered = false


