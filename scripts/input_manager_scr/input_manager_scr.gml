// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.previousThumbstickUp = false
global.previousThumbstickDown = false
function moveUp(){
	keyboard = keyboard_check_released(ord("W"))
	dPad = gamepad_button_check_released(0, gp_padu)
	thumbstick = false
	if(!global.previousThumbstickUp && gamepad_axis_value(0, gp_axislv) < -.5){
		thumbstick = true
	}
	global.previousThumbstickUp = gamepad_axis_value(0, gp_axislv) < -.5
	return keyboard || dPad || thumbstick
}
function moveDown(){
	keyboard = keyboard_check_released(ord("S"))
	dPad = gamepad_button_check_released(0, gp_padd)
	thumbstick = false
	if(!global.previousThumbstickDown && gamepad_axis_value(0, gp_axislv) > .5){
		thumbstick = true
	}
	global.previousThumbstickDown = gamepad_axis_value(0, gp_axislv) > .5
	return keyboard || dPad || thumbstick
}
function moveLeft(){
	keyboard = keyboard_check(ord("A"))
	dPad = gamepad_button_check(0, gp_padl)
	thumbstick = gamepad_axis_value(0, gp_axislh) < -.5
	return keyboard || dPad || thumbstick
}
function selecItemInput(){
	keyboard = keyboard_check_released(vk_space) || keyboard_check_released(vk_enter)
	controller = gamepad_button_check_released(0, gp_face1)
	return keyboard || controller
}
function moveRight(){
	keyboard = keyboard_check(ord("D"))
	dPad = gamepad_button_check(0, gp_padr)
	thumbstick = gamepad_axis_value(0, gp_axislh) > .5
	return keyboard || dPad || thumbstick
}
function wrapPresentInput(){
	keyboard = global.wrappingType == 0 ? keyboard_check_released(vk_space) : keyboard_check(vk_space)
	controller =  global.wrappingType == 0 ? gamepad_button_check_released(0, gp_face1) : gamepad_button_check(0, gp_face1)
	return keyboard || controller
}
function pauseInput(){
	keyboard = keyboard_check_pressed(vk_escape)
	controller = gamepad_button_check_released(0, gp_start)
	return keyboard || controller
}
function drinkCocoInput(){
	keyboard = keyboard_check_released(ord("X"))
	controller = gamepad_button_check_released(0, gp_face4)
	return keyboard || controller
}
function pullLeverInput(){
	keyboard = keyboard_check_released(ord("E"))
	controller = gamepad_button_check_released(0, gp_face3)
	return keyboard || controller
}
function cancelInput(){
	keyboard = keyboard_check_released(vk_escape)
	controller = gamepad_button_check_released(0, gp_face2)
	return keyboard || controller
}
function anyInput(){
	keyboard = keyboard_check_released(vk_anykey)
	controller = gamepad_button_check_released(0, gp_face1) || gamepad_button_check_released(0, gp_face2) || gamepad_button_check_released(0, gp_face3) || gamepad_button_check_released(0, gp_face4)
	return keyboard || controller
}
function menuSelectInput(){
	keyboard = keyboard_check_released(vk_enter)
	controller = gamepad_button_check_released(0, gp_face1)
	return keyboard || controller
}
function settingsLeftInput(){
	keyboard = keyboard_check_released(ord("A")) || keyboard_check_released(vk_left)
	controller = gamepad_button_check_released(0, gp_padl)
	return keyboard || controller
}
function settingsRightInput(){
	keyboard = keyboard_check_released(ord("D")) || keyboard_check_released(vk_right)
	controller = gamepad_button_check_released(0, gp_padr)
	return keyboard || controller
}
function backInput(){
	keyboard = keyboard_check_released(vk_escape)
	controller = gamepad_button_check_released(0, gp_face2)
	return keyboard || controller
}