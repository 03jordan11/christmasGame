/// @description Insert description here
// You can write your code in this editor

hoverId = 0

inputCooldown = 0
cooldownTime = .1

isGamepad = false

x = room_width/2
y =  room_height/2

var itemSpacing = 96
var startY = y - itemSpacing/2

_menuItems = []

array_push(_menuItems,
			instance_create_layer(x, startY + itemSpacing *3, "Instances", exit_game_text_obj),
			instance_create_layer(x, startY + itemSpacing *2 , "Instances", settings_text_obj),
			instance_create_layer(x, startY + itemSpacing, "Instances", endless_mode_text_obj),
			instance_create_layer(x, startY, "Instances", start_game_text_obj))

show_debug_message("Am in create event of object, level is " + string(global.currentLevel))
if(global.currentLevel != -1){
	array_push(_menuItems,
				instance_create_layer(x, startY - 96, "Instances", continue_text_obj))
}

for(var _i = 0; _i < array_length(_menuItems); _i++){
	_menuItems[_i].parentId = id;
	_menuItems[_i].itemId = _i	
}

function getHoveredIndex(){
	for(var _i = 0; _i < array_length(_menuItems); _i++){
		if(_menuItems[_i].isHovered){
			return _i	
		}
	}
}

function setHoveredIndex(_index) {
    for (var _i = 0; _i < array_length(_menuItems); _i++) {
        _menuItems[_i].isHovered = (_i == _index);
    }
}

function optionUp(){
	var _currentlySelected = getHoveredIndex()
	if(_currentlySelected == undefined){
		setHoveredIndex(0)
		_currentlySelected = 0
	}
	setHoveredIndex(max(_currentlySelected - 1, 0))
}
			  
function optionDown(){
	var _currentlySelected = getHoveredIndex()
	if(_currentlySelected == undefined){
		setHoveredIndex(0)
		_currentlySelected = 0
	}
	setHoveredIndex(min(_currentlySelected + 1, array_length(_menuItems) - 1))
}

function selectOption(){
	var _currentlySelected = getHoveredIndex()
	if(_currentlySelected != undefined){
		_menuItems[_currentlySelected].executeAction()
	}
}

