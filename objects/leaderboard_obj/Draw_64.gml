/// @description Insert description here
// You can write your code in this editor

if(showLeaderboard){
	//draw bkg overlay
	draw_sprite(overlay_spr, 0, 0, 0)

	//draw menu bkg
	draw_sprite(settingsBkg_spr, 0, 0, 0)


	
	var headerColor = make_color_rgb(0, 255, 29)
	draw_text_ext_transformed_color(startX + 300, startY -75, "Leaderboard", 0, 500, 1., 1., 0, headerColor, headerColor, headerColor, headerColor, 1)
	//left leadearbord
	for(var i = 0; i < array_length(leaderboard); i++){
		var textColor = make_color_rgb(10, 36, 78)
		var textHeight = string_height(leaderboard[i].name)
		var totalPadding = i*(textHeight + padding)
	
		var col = make_color_rgb(128,0,0)
		var col2 = make_color_rgb(14, 18, 82)
	
		draw_text_color(startX, startY + totalPadding, $"{leaderboard[i].rank}", 16776960, 36, c_blue, 0, 255)
		draw_text_color(startX + 50, startY + totalPadding, leaderboard[i].name, col, col, col, col, col)
		draw_text_color(startX + 300, startY + totalPadding, $"{leaderboard[i].score}", col2, col2, col2, col2, col2)
	}
	
	//right leadearboard for you and friends
	for(var i = 0; i < array_length(friendsLeaderboard); i++){
		var friendX = startX + 500
		var textHeight = string_height(friendsLeaderboard[i].name)
		var totalPadding = i*(textHeight + padding)
		
		draw_text_color(friendX, startY + totalPadding, $"{leaderboard[i].rank}", 16776960, 36, c_blue, 0, 255)
		draw_text_color(friendX + 50, startY + totalPadding, leaderboard[i].name, col, col, col, col, col)
		draw_text_color(friendX + 300, startY + totalPadding, $"{leaderboard[i].score}", col2, col2, col2, col2, col2)
	}
}

