/// @description Insert description here
// You can write your code in this editor
var masterGain = global.masterVol / 100
var musicGain = (global.musicVol/100)*masterGain
var sfxGain = (global.sfxVol/100) * masterGain

audio_emitter_gain(global.musicEmitter, musicGain)
audio_emitter_gain(global.sfxEmitter, sfxGain)