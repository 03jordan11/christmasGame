/// @description Insert description here
// You can write your code in this editor

if(!global.conveyersOn[lever_id]){
	audio_play_sound_on(global.sfxEmitter, lever_pull, false, 1)
}
global.conveyersOn[lever_id] = true
flash = false



