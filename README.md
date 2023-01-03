# Mimas_Firmware
Firmware developed for the Mimas A7 Mini Version 4

For a guide on how to set up Mimas with Vivado check out [here](https://github.com/tmcoakley/beatty_lab/blob/main/Guides/Firmware/Vivado.md)

The code within this repository are multiple iterations of attempting to get the MiMas A7 Mini to talk to the [LMK01010](https://www.digikey.com/en/products/detail/texas-instruments/LMK01010ISQE-NOPB/1872209). 

The correct code to use to use the chip is [Patricks_LMK_Code](https://github.com/Payton814/Mimas_Firmware/tree/main/Patricks_LMK_code). This code, as it is currently understood and tested, will divide the input clock down to whatever the user specifies through a VIO interface. This is seen with an oscilloscope, but cannot be checked through hardware on the FPGA because the LMK chip outputs a differential clock, which I am, as of the writing of this README, unable to figure out how to code the constraints file for the I/O's to properly take in a differential clock.

## Overview of the LMK01010 chip

So the LMK chip in the most simplistic understanding is a clock divider. You give it some clock and it outputs a differential clock, whos frequency is determined by the user. The following picture shows this basic usage.
![LMK basic schematic](https://user-images.githubusercontent.com/90419779/210421809-f313d07e-a6e6-4314-b397-a61857abc45d.png)
