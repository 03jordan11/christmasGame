/// @description Insert description here
// You can write your code in this editor

steam_update()

//pause on steam overlay
if(steam_is_overlay_activated()){
	global.isPaused = true
	overlayWasOn = true
}
else{
	if(overlayWasOn){
		overlayWasOn = false
		global.isPaused = false
	}
}