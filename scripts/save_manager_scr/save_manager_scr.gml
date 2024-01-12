function save(){
	var data = {
		name: "save2",
		time: {
			init: global.initTime,
			checked: global.checkedTime,
			save: current_time
		},
		player: {
			name: global.playerName,
			highestScore: global.highestScore
		},
		settings: {
			fullscreen: global.fullscreen,
			resolution: global.resolution,
			master_volume: global.masterVol,
			sfx_volume: global.sfxVol,
			music_volume: global.musicVol
		},
	}
	
	var file = file_text_open_write("save_file.json")
	var saveStr = json_stringify(data)
	file_text_write_string(file, saveStr)
	file_text_close(file)
}

function load(fileName){
	var file = file_text_open_read(fileName)
	var fileStr = file_text_read_string(file)
	var data = json_parse(fileStr)
	
	//time
	global.initTime = data.time.init
	global.checkedTime = data.time.checked
	//player
	global.playerName = data.player.name
	global.highestScore = data.player.highestScore
	//settings
	global.fullscreen = data.settings.fullscreen
	global.resolution = data.settings.resolution
	global.masterVol = data.settings.master_volume
	global.sfxVol = data.settings.sfx_volume
	global.musicVol = data.settings.music_volume
}

/*
* Gets all saves so that they can be displayed in list
* returns list of files as array of strings
*/
function getallSaves(){
	var filelist = []
	var i = 0;
	var filename = file_find_first("*.json", 0);
	
	while (filename != ""){
		filelist[i] = filename;
		i++;
		filename = file_find_next();
	}
	file_find_close()
	return fileList
}

/*
*checks if the user has a previous save. If they do, the continue button 
*is highlighted indicating they can use it
*/
function canContinue(){
	return false
}