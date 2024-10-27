/// @description Insert description here
// You can write your code in this editor
try{
var asyncId = ds_map_find_value(async_load, "id")

//not scorboard response


if(asyncId == scoresRequestId){
	///get the entries///
	var entriesJson = ds_map_find_value(async_load, "entries")
	var entries = json_parse(entriesJson)
	leaderboard = entries.entries
}else if(asyncId == friendScoresRequestid){
	var entriesJson = ds_map_find_value(async_load, "entries")
	var entries = json_parse(entriesJson)
	var arrLength = array_length(entries.entries)
	var limiter = arrLength < 10 ? arrLength : 10
	for (i = 0; i < limiter; i++){
		array_push(friendsLeaderboard, entries.entries[i])
	}
	friendsLeaderboard = entries.entries
}




}

/*
name
score
rank
*/
