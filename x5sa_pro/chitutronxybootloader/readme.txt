Fix for 'locked' 2021 Chitu V5/V6 boards (maybe more), that don't work with update.cbd 

Credit to J C Nelson https://hackaday.io/project/167594-chitu-3d-printer-mainboard-hacking

for his work on supplying the decrypter for chitu boards which allows bootloader to be built in marlin and this bootloader fix 

Credit to https://github.com/rhapsodyv for his work and guide notes

=============
=== ON PC ===
=============

http://www.wch-ic.com/downloads/CH341SER_EXE.html

Install Ch341ser.zip - this is the driver to connect ch340g chip on board to PC/STM32 cube programmer 
this gives you a USB as UART for STM32 connection / programming
your USB connection to board/pc should show up in device manager as com port 5 / 7 etc 
unplug and replug usb cable with device manager open to confirm port number.
****it is NOT COM1 **** set port speed baudrate to 115200 in device manager.

https://www.st.com/en/development-tools/stm32cubeprog.html

run setup of STM32 cube programmer 

==================
=== ON PRINTER ===
==================

https://github.com/rhapsodyv/Configurations/blob/tronxy_x5sa_v5_v6/config/examples/Tronxy/X5SA/chitu-board.jpg

Turn off the printer *** UNPLUG  MAINS POWER LEAD and REMOVE - turn printer to access board case ***
Open the board case
Remove the "boot" jumper (1) as the image (chitu board.jpg)
Change the V source jumper (2) from 5V to USB.

=============================================
******** Open STM Cube Programmer ***********
=============================================

optional - save firmware

=====================
=== save firmware ===
=====================

change st-link to Uart (its Uart via a USB cable and the boards ch340g chip). 
select remembered com port from drop down and port baud rate to 115200 - (so Uart / com7 / 115200 as a example)
select [memory & file edition] from white menu hamburger top left 
set address  0x08000000 set AND size 0x80000 (512kb)click read  
wait and once finished click drop down menu of read button and save as (example) mybackup-of-firmware.bin

======================================
=== flash bootloader only firmware ===
======================================

change st-link to Uart (its Uart via a USB cable and the boards ch340g chip). 
select remembered com port from drop down and port baud rate to 115200 - (so Uart / com7 / 115200 as a example)
select [erasing & programming] from white menu hamburger top left > select Full chip erase tick box (automatic mode)
Browse for chitutronxybootloader.bin
Flash the chitutronxybootloader.bin at address 0x08000000 
once done o.k, click Disconnect in STM32 programmer
Unplug USB cable
Put back the "boot" jumper (1).
Put back the "v source" jumper to 5V
insert SD card into motherboard SDcard holder / slot, with correct for your printer, update.cbd
Turn on the printer
you should get 6 double beeps as it flashes firmware followed by printer screen starting up with firmware if marlin / chitu (no screen for klipper)
if all o.k, unplug USB cable, replace cover, remove SD card, put in mains power lead and test printer.

================
***** or *******
================
 
======================================
=== flash FULL firmware ===
======================================

change st-link to Uart (its Uart via a USB cable and the boards ch340g chip). 
select remembered com port from drop down and port baud rate to 115200 - (so Uart / com7 / 115200 as a example)
select [erasing & programming] from white menu hamburger top left > select Full chip erase tick box (automatic mode)
Browse for your firmware.bin 
Flash 'your compiled' firmware.bin at address 0x08000000
once done o.k, click Disconnect in STM32 programmer
Unplug USB cable
Put back the "boot" jumper (1).
Put back the "v source" jumper to 5V
Turn on the printer
you should get printer screen starting up with firmware if marlin / chitu (no screen for klipper)
if all o.k, unplug USB cable, replace cover, remove SD card, put in mains power lead and test printer.



==================================================================================================================================================




