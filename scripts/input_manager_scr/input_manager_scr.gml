// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.previousThumbstickUp = false
global.previousThumbstickDown = false

function moveUp(){
	keyboard = keyboard_check_released(ord("W")) || keyboard_check_released(vk_up)
	dPad = gamepad_button_check_released(0, gp_padu)
	thumbstick = false
	if(!global.previousThumbstickUp && gamepad_axis_value(0, gp_axislv) < -.5){
		thumbstick = true
	}
	global.previousThumbstickUp = gamepad_axis_value(0, gp_axislv) < -.5	
	
	if(!keyboard && (dPad || thumbstick)){
		global.usingController = true
	} else if (keyboard && !(dPad || thumbstick)) {
		global.usingController = false	
	}
	
	return keyboard || dPad || thumbstick
}
function moveDown(){
	keyboard = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down)
	dPad = gamepad_button_check_released(0, gp_padd)
	thumbstick = false
	if(!global.previousThumbstickDown && gamepad_axis_value(0, gp_axislv) > .5){
		thumbstick = true
	}
	global.previousThumbstickDown = gamepad_axis_value(0, gp_axislv) > .5
	
	if(!keyboard && (dPad || thumbstick)){
		global.usingController = true
	} else if (keyboard && !(dPad || thumbstick)) {
		global.usingController = false	
	}

	return keyboard || dPad || thumbstick
}
function moveLeft(){
	keyboard = keyboard_check(ord("A")) || keyboard_check(vk_left)
	dPad = gamepad_button_check(0, gp_padl)
	thumbstick = gamepad_axis_value(0, gp_axislh) < -.5

	if(!keyboard && (dPad || thumbstick)){
		global.usingController = true
	} else if (keyboard && !(dPad || thumbstick)) {
		global.usingController = false	
	}
	
	return keyboard || dPad || thumbstick
}
function selecItemInput(){
	keyboard = keyboard_check_released(vk_space) || keyboard_check_released(vk_enter)
	controller = gamepad_button_check_released(0, gp_face1)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function moveRight(){
	keyboard = keyboard_check(ord("D")) || keyboard_check(vk_right)
	dPad = gamepad_button_check(0, gp_padr)
	thumbstick = gamepad_axis_value(0, gp_axislh) > .5
	
	if(!keyboard && (dPad || thumbstick)){
		global.usingController = true
	} else if (keyboard && !(dPad || thumbstick)) {
		global.usingController = false	
	}
	
	return keyboard || dPad || thumbstick
}
function wrapPresentInput(){
	keyboard = global.wrappingType == 0 ? keyboard_check_released(vk_space) : keyboard_check(vk_space)
	controller =  global.wrappingType == 0 ? gamepad_button_check_released(0, gp_face1) : gamepad_button_check(0, gp_face1)

	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}

	return keyboard || controller
}
function pauseInput(){
	keyboard = keyboard_check_pressed(vk_escape)
	controller = gamepad_button_check_released(0, gp_start)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function drinkCocoInput(){
	keyboard = keyboard_check_released(ord("X"))
	controller = gamepad_button_check_released(0, gp_face4)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}

	return keyboard || controller
}
function pullLeverInput(){
	keyboard = keyboard_check_released(ord("E"))
	controller = gamepad_button_check_released(0, gp_face3)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function cancelInput(){
	keyboard = keyboard_check_released(vk_escape)
	controller = gamepad_button_check_released(0, gp_face2)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function anyInput(){
	keyboard = keyboard_check_released(vk_anykey)
	controller = gamepad_button_check_released(0, gp_face1) || gamepad_button_check_released(0, gp_face2) || gamepad_button_check_released(0, gp_face3) || gamepad_button_check_released(0, gp_face4)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function menuSelectInput(){
	keyboard = keyboard_check_released(vk_enter)
	controller = gamepad_button_check_released(0, gp_face1)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function settingsLeftInput(){
	keyboard = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)
	controller = gamepad_button_check_released(0, gp_padl)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function settingsRightInput(){
	keyboard = keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)
	controller = gamepad_button_check_released(0, gp_padr)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
	
	return keyboard || controller
}
function backInput(){
	keyboard = keyboard_check_released(vk_escape)
	controller = gamepad_button_check_released(0, gp_face2)
	
	if(!keyboard && controller){
		global.usingController = true
	} else if (keyboard && !controller) {
		global.usingController = false	
	}
		
	return keyboard || controller
}