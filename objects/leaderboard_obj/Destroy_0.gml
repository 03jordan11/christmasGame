/// @description Insert description here
// You can write your code in this editor

flexpanel_delete_node(n_root, true)
for (var i = 0; i < array_length(created_instances); i++) {
	if (instance_exists(created_instances[i])) {
	    instance_destroy(created_instances[i])
	}
}

global.mainMenuOptionsEnabled = true

show_debug_message($"Destroying leaderboard object, mainMenuOptionsEnabled: {global.mainMenuOptionsEnabled}")
