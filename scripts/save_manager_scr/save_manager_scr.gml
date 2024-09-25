function save(){
	var data = {
		name: "save",
		level: global.currentLevel,
		storyHighScore: global.highestScore,
		endlessHighScore: global.highestEndlessScore,
		settings: {
			fullscreen: global.fullscreen,
			resolution: global.resolution,
			master_volume: global.masterVol,
			sfx_volume: global.sfxVol,
			music_volume: global.musicVol,
			wrappingType: global.wrappingType
		},
	}
	
	var file = file_text_open_write(global.saveFileName)
	var saveStr = json_stringify(data)
	file_text_write_string(file, saveStr)
	file_text_close(file)
}

function load(fileName){
	if(doesSaveExist()){
		var file = file_text_open_read(fileName)
		var fileStr = file_text_read_string(file)
		var data = json_parse(fileStr)
	
	
		// FIX ME BEFORE PUSHING
		global.currentLevel = data.level
		global.highestScore = data.storyHighScore
		global.endlessHighScore = data.endlessHighScore
		//settings
		global.fullscreen = data.settings.fullscreen
		global.resolution = data.settings.resolution
		global.masterVol = data.settings.master_volume
		global.sfxVol = data.settings.sfx_volume
		global.musicVol = data.settings.music_volume
		global.wrappingType = data.settings.wrappingType
		
		initSavedSettings()
		show_debug_message("inside load, level is " + string(global.currentLevel))
	}	
}

function initSavedSettings(){
	window_set_fullscreen(global.fullscreen)
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
	return global.currentLevel != -1
}

function doesSaveExist(){
	return file_exists(global.saveFileName)
}