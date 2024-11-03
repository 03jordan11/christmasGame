/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(menuOptions); i++){
	//draw selected if there
	var textColor = c_gray
	var textHeight = string_height(menuOptions[i])
	var totalPadding = i*(textHeight + padding)
	var textWidth = string_width(menuOptions[i])
	
	//bounding box for selections
	var textX1 = startX
	var textY1 = startY + totalPadding
	var textX2 = textX1 + textWidth
	var textY2 = textY1 + textHeight
	
	var isHovering = point_in_rectangle(mouse_x, mouse_y, textX1, textY1, textX2, textY2)
	if(isHovering){
		selectedIndex = i
		if(mouse_check_button_pressed(mb_left)){
			selectActions[i]()
		}
	}
	
	//drawing seleccted box
	if (selectedIndex == i){
		var spriteWidth = sprite_get_width(mainMenuSelect)
		var spriteHeight = sprite_get_height(mainMenuSelect)
		var xScale = (textWidth+40) / spriteWidth
		var xPos = startX - 20
		var yPos = startY - ((spriteHeight - textHeight)/2) + totalPadding
		draw_sprite_ext(mainMenuSelect, 0, xPos, yPos ,xScale, 1, 0, c_white, 1)
		textColor = c_white
	}
	
	//draw words
	draw_set_font(mainMenu_font)
	draw_set_color(textColor)
	draw_text_ext_transformed_color(startX - 5, startY + totalPadding, menuOptions[i], -1, -1, 1.01, 1.1, 0, c_black, c_black, c_black, c_black, 1 )
	draw_text(startX, startY + totalPadding, menuOptions[i])
}