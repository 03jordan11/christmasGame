/// @description Insert description here
// You can write your code in this editor
//select random conveyor
var conveyorSelected = -1

while (conveyorSelected = -1){
	var sel = irandom(3)
	if (!global.conveyersOn[sel] || conveyorSpawnStatus[sel] > 0){
		if (conveyorSpawnStatus[sel] > 0){
			conveyorSpawnStatus[sel] = -1
		}
		continue
	}else{
		conveyorSpawnStatus[sel]++
		conveyorSelected = sel
	}
}
spawnToys(conveyorSelected)
