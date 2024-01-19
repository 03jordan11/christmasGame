//initializes global variables

//time
global.initTime = 0
global.checkedTime = 0
global.timeSpaceHeld = 0
global.spaceHeldStart = -1
global.timerStart = -1
global.levelTimeSeconds = 200

//player
global.playerName = 0
global.buffs = []
  /*represents the conveyeer they are at*/
global.location = 0
global.playerIsWrapping = false
global.wrappingTimesPressed = 0
global.elfAnim = "idle"
global.playerCanMove = true

//settings
global.difficulty = 0
global.score = 0
global.highestScore = 0
global.fullscreen = true
global.resolution = 0
global.masterVol = 100
global.sfxVol = 100
global.musicVol = 100

global.conveyersOn = [true, false, true, false]
global.conveyerSpeed = [[120, 200], [120, 200], [120, 200], [120, 200]]

global.spriteSpeed = 10

global.toysOnBelt = ds_list_create()

//strings

global.mainMenuStartText = "Start"
global.mainMenuExitText = "Exit"
