/// @description Insert description here
// You can write your code in this editor
try{
var asyncId = ds_map_find_value(async_load, "id")
	if(asyncId == scoresRequestId){
		///get the entries///
		var entriesJson = ds_map_find_value(async_load, "entries")
		var entries = json_parse(entriesJson)
		leaderboard = entries.entries
		refresh_leaderboard()
	}
	else if(asyncId == userScoreRequestId){
		var entriesJson = ds_map_find_value(async_load, "entries")
		var entries = json_parse(entriesJson)
		yourLeaderboard = entries.entries
		refresh_leaderboard()
	}
}

/*
name
score
rank
*/
