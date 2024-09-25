/// @description Insert description here
// You can write your code in this editor

levelMusic = [Carol_Of_The_Bells__Audionautix__No_Copyright_Music_, Christmas_Music___No_Copyright_Music__Free_Download_, Deck_the_Halls__Jingle_Punks__No_Copyright_Music_, Happy_Christmas_Background_Music_For_Videos, Jingle_Bells__Kevin_MacLeod__No_Copyright_Music_]
currentSongIndex = 0

if (room == NewMainMenu){
	audio_stop_all()
	audio_play_sound_on(global.musicEmitter, Ikson___Christmas__No_Copyright_Christmas_Music_Instrumental_, true, 1)
}
if (room == SantasWorkshop){
	audio_stop_all()
	switch(global.currentLevel){
		case 1:
			audio_play_sound_on(global.musicEmitter, levelMusic[3], true, 1)
			break
		case 2:
			audio_play_sound_on(global.musicEmitter, levelMusic[1], true, 1)
			break
		case 3:
			audio_play_sound_on(global.musicEmitter, levelMusic[2], true, 1)
			break
		case 4:
			audio_play_sound_on(global.musicEmitter, levelMusic[1], true, 1)
			break
		case 5:
			audio_play_sound_on(global.musicEmitter, levelMusic[4], true, 1)
			break
		case -1:
			audio_play_sound_on(global.musicEmitter, levelMusic[1], true, 1)
			break
	}
}
