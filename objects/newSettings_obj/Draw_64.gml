/// @description Insert description here
// You can write your code in this editor

//draw bkg overlay
draw_sprite(overlay_spr, 0, 0, 0)

//draw menu bkg
draw_sprite(settingsBkg_spr, 0, startX, startY)

//draw Settings title
var containerCenter = containerWidth/2
var titleTextPosX = containerCenter - string_width("Settings")/2 
var titleTextPosY = 64
draw_set_font(ARCO_main_menu_font)
draw_set_color(textColor)
draw_text(400, 22, "Settings")


draw_set_font(mainMenu_font)
//draw Settings options
var optionStartX = containerCenter - trayWidth/2
var optionStartY = titleTextPosY + string_height("Settings") + titlePadding

for(var i = 0; i < array_length(settings); i++){
	var trayOption = settingTray_spr
	if (selectedSettingIndex == i){
		trayOption = settingSelectedTray_spr
	}
	var optionY = optionStartY + ((trayHeight+optionPadding)*i)
	draw_sprite(trayOption, 0, optionStartX, optionY)
	//if hovering over sprite, set to selectedSettingIndex to i
	#region hoverlogic
	var trayLeft = optionStartX
	var trayTop = optionY
	var trayRight = optionStartX + trayWidth
	var trayBottom = optionY + trayHeight
	var isHoverd = point_in_rectangle(mouse_x, mouse_y, trayLeft, trayTop, trayRight, trayBottom)
	
	if (isHoverd){
		selectedSettingIndex = i
	}
	#endregion

	
	//draw text
	var trayMidpoint = trayHeight/2
	var textHeight = string_height(settings[i])
	var textPosY = optionY + (trayMidpoint - textHeight/2) + 6
	draw_set_font(settingsOptions_font)
	draw_text(optionStartX + optionTextPadding, textPosY, settings[i])
	
	//draw volume sliders
	if(i <3){
		var soundLevel = 0
		switch(i){
			case 0:
				soundLevel = global.masterVol
				break
			case 1:
				soundLevel = global.sfxVol
				break
			case 2:
				soundLevel = global.musicVol
				break
		}

		var volumePosX = optionStartX - 32 + trayWidth/2
		draw_text(volumePosX, textPosY, string(soundLevel))
		
		if(selectedSettingIndex == i){
			draw_sprite(volumeSelect_spr, 0, volumePosX + 98, textPosY + 8)
		}else{
			draw_sprite(volume_spr, 0, volumePosX + 98, textPosY + 8)
		}
		
		var volBarWidth = sprite_get_width(volume_spr)
		var volKnobPos = (soundLevel/100) * volBarWidth
		var volKnobX = volumePosX + 98 + volKnobPos-16
		var volKnobY = textPosY + 8
		if(soundLevel >= 80){
			draw_sprite(_4_3_volume_high, 0, volKnobX, volKnobY-22)
		}
		else if (soundLevel > 30){
			draw_sprite(volIndicator_spr, 0, volKnobX, volKnobY-22)
		}
		else{
			draw_sprite(_4_3_volume_low, 0, volKnobX, volKnobY-22)		
		}
		
	}
	draw_sprite(volLeftArrow_spr, 0, volumePosX + 64, textPosY + 4)
	draw_sprite(volRightArrow_spr, 0, volumePosX + 395, textPosY + 4)

	//draw rest
	if(i == 3){
		if(global.wrappingType == 0){
			var selXPos = volumePosX + 250 - string_width("Tap")/2
			draw_text(selXPos, textPosY, "Tap")
		}
		else{
			var selXPos = volumePosX + 250 - string_width("Hold")/2
			draw_text(selXPos, textPosY, "Hold")
		}
	}
	if(i==4){
		if(global.fullscreen){
			var selXPos = volumePosX + 250 - string_width("On")/2
			draw_text(selXPos, textPosY, "On")	
		}
		else{
			var selXPos = volumePosX + 250 - string_width("Off")/2
			draw_text(selXPos, textPosY, "Off")	
		}
	}
}

var botX = 1000
var botY = 660

draw_sprite(settingsBtnBkg_spr, 0, botX-40, botY)
draw_sprite(Esc_Key, 0, botX-30, botY+6)
draw_sprite(xbox_b_32x32, 0, botX+12, botY+7)
draw_text_color(botX + 50, botY + 8, "Back", c_black, c_black, c_black, c_black, 1)
