/// @description Insert description here
// You can write your code in this editor

if(selectedIndex != 0 && moveUp()){
	selectedIndex--
}
if(selectedIndex != array_length(menuOptions)-1 && moveDown()){
	selectedIndex++
}
if(menuSelectInput()){
	//show_debug_message($"menu select input activated, mainMenuOptionsEnabled = {global.mainMenuOptionsEnabled}")
	if(global.mainMenuOptionsEnabled){
		selectActions[selectedIndex]()
	}
}
