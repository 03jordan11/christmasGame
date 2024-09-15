/// @description Insert description here
// You can write your code in this editor
global.initTime = current_second

if(steam_initialised()){
	show_debug_message("steam initialize")
}
var temp = steam_create_leaderboard("time", lb_sort_descending, lb_disp_numeric)
show_debug_message(temp)