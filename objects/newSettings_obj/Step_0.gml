/// @description Insert description here
// You can write your code in this editor
if(selectedSettingIndex != 0 && moveUp()){
	selectedSettingIndex--
}
if(selectedSettingIndex != array_length(settings)-1 && moveDown()){
	selectedSettingIndex++
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
	if(room = NewMainMenu){
		instance_create_layer(0, 0, "Instances", newMainMenuObj)
	}else{
		pause_obj._settingsMenuEnabled = false
	}
	instance_destroy(self)
}