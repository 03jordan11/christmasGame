/// @description Insert description here
// You can write your code in this editor
startX = 0
startY = 0
selectedSettingIndex = 0
textColor = c_white
settings = ["Main Volume", "SFX Volume", "Music Volume", "Wrapping Type", "Fullscreen"]

titlePadding = 32
optionPadding = 16
optionTextPadding = 32

containerWidth = sprite_get_width(settingsBkg_spr)
trayWidth = sprite_get_width(settingTray_spr)
trayHeight = sprite_get_height(settingTray_spr)

leftArrowIndex = 0
rightArrowIndex = 0
arrowSelected = 0 //0 is right, 1 is left

settingActionsLeft = [
	function(){
		show_debug_message("inside first action left")
		if(global.masterVol != 0){
			show_debug_message("inside if check")
			global.masterVol = global.masterVol - 10;
			show_debug_message($"set new masterVol to {global.masterVol}")
		}
	},
	function(){
		if(global.sfxVol != 0){
			global.sfxVol -= 10
		}
	},
	function(){
		if(global.musicVol != 0){
			global.musicVol -= 10
		}
	},
	function(){
		if(global.wrappingType = 0){
			global.wrappingType = 1
		}else{
			global.wrappingType = 0
		}
	},
	function(){
		global.fullscreen = !global.fullscreen
		setFullscreen(global.fullscreen)
	}
]
settingActionsRight = [
	function(){
		if(global.masterVol != 100){
			global.masterVol += 10
		}
	},
	function(){
		if(global.sfxVol != 100){
			global.sfxVol += 10
		}
	},
	function(){
		if(global.musicVol != 100){
			global.musicVol += 10
		}
	},
	function(){
		if(global.wrappingType = 0){
			global.wrappingType = 1
		}else{
			global.wrappingType = 0
		}
	},
	function(){
		global.fullscreen = !global.fullscreen
		setFullscreen(global.fullscreen)
	}
]