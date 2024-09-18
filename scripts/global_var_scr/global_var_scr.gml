//global.environment = "TEST"
global.environment = "PROD"

//initializes global variables
global.saveFileName = "save_file.json"
global.showText = true
global.currentLevel = -1
//time
global.initTime = 0
global.checkedTime = 0
global.timeSpaceHeld = 0
global.spaceHeldStart = -1
global.timerStart = -1
global.levelTimeSeconds = global.MAX_LEVEL_TIME
global.pauseDisabled = false
//player
global.playerName = 0
global.buffs = []
  /*represents the conveyeer they are at*/
global.location = 0
global.playerIsWrapping = false
global.wrappingTimesPressed = 0
global.elfAnim = "idle"
global.playerCanMove = true
global.wrappingTimeSeconds = 2
global.wrappingTimeButtonPress = 6
global.cocoTimeReductionSeconds = 1
global.cocoTimePressedReduction = 3

//settings
global.difficulty = 0
global.score = 0
global.highestScore = 0
global.highestEndlessScore = 0
global.fullscreen = true
global.resolution = 0
global.masterVol = 20
global.sfxVol = 20
global.musicVol = 20
global.isPaused = false
global.wrappingType = 0

//game room
global.conveyersOn = [true, true, true, true]
global.conveyerSpeed = [[120, 200], [200, 320], [120, 200], [180, 200]]
global.cocoMachineEnabled = true
global.conveyerLeversEnabled = false
global.cocoIsMaking = false
global.cocoMakingTime = 10
global.cocoIsReady = false
global.leversEnabled = true
global.health = 5

global.spriteSpeed = 10

global.toysOnBelt = ds_list_create()

//strings

global.settingsMenuIsOpen = false
global.mainMenuStartText = "Start"
global.mainMenuSettingsText = "Settings"
global.mainMenuExitText = "Exit"
global.endlessModeText = "Endless Mode"
global.continueText = "Continue"

//positions
global.bagPosition = [1135, 320]

global.sfxEmitter = audio_emitter_create()
global.musicEmitter = audio_emitter_create()

//steam achievments
global.day5 = "ACH_DAY_5"
global.day4 = "ACH_DAY_4"
global.day3 = "ACH_DAY_3"
global.day2 = "ACH_DAY_2"
global.day1 = "ACH_DAY_1"
global.oneThousand = "ACH_1000"
global.tenThousand = "ACH_10000"
global.endless = "ACH_ENDLESS_MODE"