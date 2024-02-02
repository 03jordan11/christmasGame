//check level

//if level -1, endable endless mode, remove gui

//if level 1, disable coco and levers
if(global.currentLevel == 1){
	global.cocoMachineEnabled = false
	global.leversEnabled = false
}
else if(global.currentLevel == 2){
	global.leversEnabled = false
	global.cocoMachineEnabled = true
}
else{
	global.leversEnabled = true
	global.cocoMachineEnabled = true
}


//if level 2, disable levers