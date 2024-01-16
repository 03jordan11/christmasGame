//initializes global variables

//time
global.initTime = 0
global.checkedTime = 0

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
global.masterVol = 20
global.sfxVol = 20
global.musicVol = 20

global.conveyerOn = false

global.spriteSpeed = 10

global.toysOnBelt = ds_list_create()

//strings

global.mainMenuStartText = "Start"
global.mainMenuSettingsText = "Settings"
global.mainMenuExitText = "Exit"
