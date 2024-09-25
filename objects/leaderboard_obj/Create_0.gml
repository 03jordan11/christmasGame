/// @description Insert description here
// You can write your code in this editor
leaderboard = []
friendsLeaderboard = []
showLeaderboard = false
scoresRequestId = steam_download_scores("time", 1, 10)
friendScoresRequestid = steam_download_friends_scores("time")

startX = 190
startY = 120
padding = 16