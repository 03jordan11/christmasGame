/// @description Insert description here
// You can write your code in this editor

if(global.playerCanMove && !global.isPaused){
	playerMovement(self)
}

if(global.leversEnabled && !global.isPaused){
	pressLever(self)
}

if(global.cocoIsReady && !global.isPaused){
	drinkCoco()
}
//TODO REFACTOR THIS GARBAGE
/**add where you cant just continously hold it down and wrap everything
   add where there is no anim when you aren't pressing space
   add back tapping, set it to default, make it changeable in settings
 **/
if(global.wrappingType == 0){
	if(!global.isPaused && wrapPresentInput()){
		wrapPresent(self)
	}
}
else{
	if(!global.isPaused && wrapPresentInput() && (isToyBelow(self) || global.playerIsWrapping)){
		global.elfAnim = "wrapping"
		if(!global.playerIsWrapping){
			wrapPresent(self)
		}
		if (global.spaceHeldStart == -1){
			global.spaceHeldStart = current_time
		}
		else{
			global.timeSpaceHeld += (current_time - global.spaceHeldStart) / 1000
			global.spaceHeldStart = current_time
			wrapPresent(self)
		}
	}
	else{
		if (global.spaceHeldStart != -1){
			global.elfAnim = ""
			global.spaceHeldStart = current_time
		}
	}
}
if (global.isPaused){
	image_speed = 0
}

if (!global.isPaused && global.elfAnim == ""){
	if (self.sprite_index != elf_idle_spr){
		self.sprite_index = elf_wrapping_spr
	}
	image_index = 0
	image_speed = 0
}

if (!global.isPaused && global.elfAnim == "idle"){
	if (self.sprite_index != elf_idle_spr){
		self.sprite_index = elf_idle_spr
	}
	image_speed = 1
}

if (!global.isPaused && global.elfAnim == "wrapping"){
	if (self.sprite_index != elf_wrapping_spr){
		self.sprite_index = elf_wrapping_spr
	}
	image_speed = 1
}
