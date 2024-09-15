// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Leaderboard variables
global.leaderboard_name = "HighScores"; // Name of your leaderboard
global.leaderboard_found = false;       // Status of leaderboard retrieval
global.leaderboard_id = -1;             // Leaderboard ID handle

/// @function submit_score_to_steam()
/// @description Finds or creates the leaderboard and submits the player's score.
function submit_score_to_steam() {
	var temp = steam_upload_score(global.leaderboard_name, 180)
}