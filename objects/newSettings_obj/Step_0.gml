/// @description Insert description here
// You can write your code in this editor
if(selectedSettingIndex != 0 && moveUp()){
	clamp(selectedSettingIndex, 0, array_length(settings))
	selectedSettingIndex--
}
if(selectedSettingIndex != array_length(settings)-1 && moveDown()){
	clamp(selectedSettingIndex, 0, array_length(settings))
	selectedSettingIndex++
}

if(mouse_check_button_released(mb_left)){
	if(backButtonHovered){
		returnFromSettings()
	}
}

if(mouse_check_button_pressed(mb_left) && selectedSettingIndex >= 0){
	if(!arrowSelected)//right
	{
		settingActionsRight[selectedSettingIndex]()
	} 
	if(arrowSelected){
		settingActionsLeft[selectedSettingIndex]()	
	}
	save()
}

if(settingsLeftInput()){
	settingActionsLeft[selectedSettingIndex]()
	save()
}
if(settingsRightInput()){
	settingActionsRight[selectedSettingIndex]()
	save()
}
if(backInput()){
	returnFromSettings()
}

function returnFromSettings(){
	if(room = NewMainMenu){
		instance_create_layer(0, 0, "Instances", newMainMenuObj)
	}else{
		pause_obj._settingsMenuEnabled = false
	}
	instance_destroy(self)
}