# Ender 3 + SKR-1.4 Turbo + BL Touch

Marlin compiled firmware with some additional features that suit the SKR 1.4 Turbo Board, with 4xTMC2208 BTT Drivers and a BL Touch. 

Changes made (some things may be missing from here): 

Configuration.h

	-Speed and accel slightly higher at: (DEFAULT_MAX_FEEDRATE          { 500, 500, 20, 50 }, DEFAULT_MAX_ACCELERATION      { 500, 500, 200, 5000 })
	-TMC2208  Drivers on the X,Y,Z and E0 steppers
	-Hybrid Treshold on speeds higher than 120mm/s to minimize noises
	-Mesh Bed Leveling with a 4x4 matrix
	-LCD Leveling menu
	-Bed Screws Leveling LCD menu
	-E-Steps adjusted to the Creality Dual Gear Extruder (142)
	-Extruder cooler fan only active above 50°C 
	-Max Bed Temp at 125°C
	-Minimal extruder temperature at 180°C to extrude any material
	-PID values altered
	-LCD PID menu
	-Bed PID added
	-Set true bed volume of the Ender 3(#define X_BED_SIZE 235 #define Y_BED_SIZE 235 	#define Z_MAX_POS 250)
	-Filament Runout Sensor added using the stock Ender 3 Z Endstop
	-Added EEPROM saving

Configuration_adv.h

	-Extruder cooler pin configured
	-Quick Home function added (homes all axis at the same time)
	-Info LCD menu
	-Added scroll when LCD has too much info to display
	-Configured SD card
	-Added Babystepping just holding the encoder button from the main screen
	-Added Advanced Pause
	-Configured TMC2208 values for UART