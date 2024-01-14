// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function listToArray(list){
	var size = ds_list_size(list)
	var arr = array_create(list)
	for (var i = 0; i < size; i++){
		arr[i] = ds_list_find_value(list, i)
	}
	return arr
}