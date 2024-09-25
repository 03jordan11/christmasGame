/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_green)

inputCooldown -= 1 / game_get_speed(gamespeed_fps)
	
if(inputCooldown <= 0 && !global.settingsMenuIsOpen){
	
	// Controller move down
	if(gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > .5){
		optionDown()
		inputCooldown = cooldownTime
		isGamepad = true
	}
	
	// Controller move up
	if(gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -.5){
		optionUp()
		inputCooldown = cooldownTime
		isGamepad = true
	}
		
	// Controller enter
	if(gamepad_button_check_released(0, gp_face1)){
		selectOption()
		inputCooldown = cooldownTime
		isGamepad = true
	}
}
		