/// @description Insert description here
// You can write your code in this editor
leaderboard = []
yourLeaderboard = []
scoresRequestId = steam_download_scores("time", 1, 10)
userScoreRequestId = steam_download_scores_around_user("time", 0, 0)

global.mainMenuOptionsEnabled = false;

//show_debug_message($"Leaderboard object created, mainMenuOptionsEnabled: {global.mainMenuOptionsEnabled}")

n_root = undefined

created_instances = []

function refresh_leaderboard(){
	show_debug_message("Leaderboard refreshing...")
	//show_debug_message($"leaderboard length: {array_length(leaderboard)}, yourLeaderboard length: {array_length(yourLeaderboard)}")
	
	if(!is_undefined(n_root) && n_root != noone){
		flexpanel_delete_node(n_root, true)
	}
	
	for (var i = 0; i < array_length(created_instances); i++) {
	    if (instance_exists(created_instances[i])) {
	        instance_destroy(created_instances[i])
	    }
	}
	
	created_instances = []
	
	_title_node = flexpanel_create_node({
		name: "title_node",
		width: "105%",
		height: 100,
		flexDirection: "row",
		justifyContent: "center",
		alignItems: "center",
		padding: 0,
		nodes: [
			{ 
				name: "title_sprite_left",
				aspectRatio: 1,
				height: "100%",
				data: {
					sprite: ""
				}			
			},
			{
				name: "title_text",
				height: "100%",
				width: 400,
				flexDirection: "row",
				alignItems: "center",
				justifyContent: "space-around",
				data: {
					text: "Leaderboard"	
				}
			},
			{ 
				name: "title_sprite_right",
				aspectRatio: 1,
				height: "100%",
				data: {
					sprite: ""
				}			
			}
		]
	})

	_your_score_node = flexpanel_create_node({
		name: "your_score_entry",
		width: "65%",
		height: 60,
		gap: 0,
		marginTop: 30,
		flexDirection: "row",
		alignItems: "center",
		justifyContent: "center",
		nodes: [
			{
				name: "your_place",
				width: "auto",
				height: 60,
				width: string_width(array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].rank : ""),
				data: {
					text: array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].rank : ""
				},
			},
			{
				name: "your_username",
				width: string_width(array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].name : "") + 80,
				height: 60,
				flexDirection: "row",
				alignItems: "flex-start",
				justifyContent: "flex-start",
				marginLeft: 20,
				data: {
					text: array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].name : ""
				},
			},
			{
				name: "your_score",
				width: "auto",
				width: string_width(array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].score : ""),
				height: 60,
				data: {
					text: array_length(yourLeaderboard) > 0 ? yourLeaderboard[0].score : ""
				},
			},
		]
	})
	
	_leaderboard_container = flexpanel_create_node({
		name: "leaderboard_container",
		flexDirection: "row",
		justifyContent: "space-between",
		alignItems: "space-around",
		position: "relative",
		width: "100%",
		height: "70%",
		gap: 10,
		marginTop: 45,
		nodes: []
	})
	
	// Create column nodes
	for(var i = 0; i < 2; i++){
		var _leaderboard_column = flexpanel_create_node({
			name: $"leaderboard_column_{i}",
			width: "50%",
			height: "100%",
			padding: 10,
			gap: 5,
			flexDirection: "column",
			nodes: []
		})
		
		if(i == 0) {
			for(var j = 0; j < 5; j++){
				if(array_length(leaderboard) > j){
					// Fill column 1 with leaderboard entries
					var _leaderboard_entry = create_leaderboard_entry(j)
					flexpanel_node_insert_child(_leaderboard_column, _leaderboard_entry, j)
				}
			}		
		} else if (i == 1) {
			for(var j = 5; j < 10; j++){
				if(array_length(leaderboard) > j){
					// Fill column 2 with leaderboard entries
					var _leaderboard_entry = create_leaderboard_entry(j)
					flexpanel_node_insert_child(_leaderboard_column, _leaderboard_entry, j-5)
				}
			}	
		}
		
		flexpanel_node_insert_child(_leaderboard_container, _leaderboard_column, i)
	}

	n_root = flexpanel_create_node({
		name: "root",
		alignItems: "center",
		justifyContent: "flex-start",
		flexDirection: "column",
		paddingHorizontal: "10%",
		paddingVertical: "5%",
		nodes: []
	})

	flexpanel_node_insert_child(n_root, _title_node, 0)
	
	// If the user doesn't have a leaderboard entry, skip the "your score" node
	if(array_length(yourLeaderboard) > 0){
		flexpanel_node_insert_child(n_root, _your_score_node, 1)
		flexpanel_node_insert_child(n_root, _leaderboard_container, 2)
	} else {
		flexpanel_node_insert_child(n_root, _leaderboard_container, 1)
	}
	

	target_w = room_width;
	target_h = room_height;

	flexpanel_calculate_layout(n_root, target_w, target_h, flexpanel_direction.LTR);
	
	generate_instance(n_root, 0);
}

function create_leaderboard_entry(index){
	return flexpanel_create_node({
		name: $"leaderboard_entry",
		height: 50,
		flexDirection: "row",
		gap: 10,
		justifyContent: "center",
		nodes: [
			{
				name: $"leaderboard_place",
				width: 70,
				height: "auto",
				data: {
					text: leaderboard[index].rank	
				}
			},
			{
				name: $"leaderboard_username",
				flexGrow: 1,
				data: {
					text: leaderboard[index].name	
				}
			},
			{
				name: $"leaderboard_score",
				width: 150,
				height: "auto",
				data: {
					text: leaderboard[index].score
				}
			}
		]
	})	
	
}

generate_instance = function(_node, _depth) {
    var _pos = flexpanel_node_layout_get_position(_node, false);
    var _name = flexpanel_node_get_name(_node);
    var _data = flexpanel_node_get_data(_node);
    var _text = noone;

    if (!is_undefined(_data) && _data != noone && variable_struct_exists(_data, "text")) {
        _text = _data.text;
    }
    
    // Debugging position and size
    //show_debug_message("Node: " + string(_name) + " | Position: (" + string(_pos.left) + ", " + string(_pos.top) + ") | Size: (" + string(_pos.width) + ", " + string(_pos.height) + ")");

    // Create instance
    var new_instance = instance_create_depth(_pos.left, _pos.top, _depth, leaderboard_obj_element, {
        name: _name,
        width: _pos.width,
        height: _pos.height,
        text: _text
    });
	
	array_push(created_instances, new_instance)
    
    // Call for children (recursive)
    var _children_count = flexpanel_node_get_num_children(_node);
    for (var i = 0; i < _children_count; i++) {
        var _child = flexpanel_node_get_child(_node, i);
        generate_instance(_child, _depth - 1);
    }
}




