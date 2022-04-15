
# How to flash Klipper to the Chitu V6 Board (CXY-V6-191017)

To flash Klipper to the Raspberry Pi, I recommend using the KIAUH tool linked below.
## Referência

 - [KIAUH Klipper Installation And Update Helper](https://github.com/th33xitus/kiauh)
 - [Klipper Github](https://github.com/Klipper3d/klipper)
 - [Klipper Docs](https://www.klipper3d.org/)

## **❗ Notes:**
-This tutorial is only meant and tested for the V6-191017 Chitu board. 
-I take no responsability on the usage of any of this code or files
**📢 Usage of this script happens at your own risk!**


## **🛠️ Instructions:**


#### Step 1
To flash Klipper to the printer's MCU, first you'll need to unlock the Bootloader.
To unlock the bootloader,you'll need to use the STM32 Cube Programmer. 
https://youtu.be/N1FaKO5QziE


#### Step 2
After that, place "update.cbd" on an SD card and boot the printer. It should beep 6 times and it would be correctly flashed. 
If coming from Marlin, you'll notice the screen no longer turns on, and that's totally normal as it is not currently supported natively on Klipper. 


