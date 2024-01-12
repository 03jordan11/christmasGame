// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePlayer(player){
	switch(global.location){
		case 1:
			player.x = 575
			player.y = 105
		break;
		case 2:
			player.x = 575
			player.y = 254
		break;
		case 3:
			player.x = 575
			player.y = 408
		break;
		case 4:
			player.x = 575
			player.y = 559
		break;
	}
}