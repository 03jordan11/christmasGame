/// @description Insert description here
// You can write your code in this editor
conveyorSpawnStatus = [-1, -1, -1, -1]
minTime = 0
maxTime = 0
//higher numbers is more time
switch(global.currentLevel){
	case -1:
		minTime = 80
		maxTime = 120
		break;
	case 1:
		minTime = 180
		maxTime = 220
		break;
	case 2:
		minTime = 160
		maxTime = 200
		break;
	case 3:
		minTime = 140
		maxTime = 180
		break
	case 4:
		minTime = 110
		maxTime = 150
		break
	case 5:
		minTime = 80
		maxTime = 120
		break
}
global.toys = [toy_ball_obj, toy_doll_obj, toy_rocking_horse_obj, toy_teddy_obj, toy_train_obj]
randomize()

