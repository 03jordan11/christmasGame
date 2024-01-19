// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//// @arg x
//// @arg y
//// @arg width
//// @arg height
//// @arg LIST_TYPE
function create_main_menu_options_list() {

	var _x = argument[0]
	var _y = argument[1]
	var _width = argument[2]
	var _height = argument[3]
	var _type = argument[4]

	var _list = instance_create_layer(_x, _y, "Instances", option_list_obj)

		with(_list) {
			width = _width
			height = _height
			type = _type
	
			switch(_type) {
				case ListType.MAIN_MENU_OPTIONS:
					ds_list_add(list, ["Main Volume", global.masterVol, [0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]])
					ds_list_add(list, ["Sound Effects Volume", global.sfxVol, [0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]])
					ds_list_add(list, ["Music Volume", global.musicVol, [0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]])
					ds_list_add(list, ["Close", -1, []])
				break
			}
		}

	return _list
	
}

