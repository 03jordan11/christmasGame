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
global.fullscreen = false
global.resolution = 0
global.masterVol = 20
global.sfxVol = 20
global.musicVol = 20
global.isPaused = false
global.wrappingType = 0

//game room
global.conveyersOn = [true, true, true, true]
global.conveyerSpeed = [[120, 200], [200, 320], [120, 200], [180, 200]]
global.cocoMachineEnabled = false
global.conveyerLeversEnabled = false

global.spriteSpeed = 10

global.toysOnBelt = ds_list_create()

//strings

global.settingsMenuIsOpen = false
global.mainMenuStartText = "Start"
global.mainMenuSettingsText = "Settings"
global.mainMenuExitText = "Exit"


//positions
global.bagPosition = [1135, 320]