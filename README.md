# Mimas_Firmware
Firmware developed for the Mimas A7 Mini Version 4

For a guide on how to set up Mimas with Vivado check out [here](https://github.com/tmcoakley/beatty_lab/blob/main/Guides/Firmware/Vivado.md)

The code within this repository are multiple iterations of attempting to get the MiMas A7 Mini to talk to the [LMK01010](https://www.digikey.com/en/products/detail/texas-instruments/LMK01010ISQE-NOPB/1872209). 

The correct code to use to use the chip is [Patricks_LMK_Code](https://github.com/Payton814/Mimas_Firmware/tree/main/Patricks_LMK_code). This code, as it is currently understood and tested, will divide the input clock down to whatever the user specifies through a VIO interface. This is seen with an oscilloscope, but cannot be checked through hardware on the FPGA because the LMK chip outputs a differential clock, which I am, as of the writing of this README, unable to figure out how to code the constraints file for the I/O's to properly take in a differential clock.

## Overview of the LMK01010 chip

So the LMK chip in the most simplistic understanding is a clock divider. You give it some clock and it outputs a differential clock, whos frequency is determined by the user. The following picture shows this basic usage.
![LMK basic schematic](https://user-images.githubusercontent.com/90419779/210421809-f313d07e-a6e6-4314-b397-a61857abc45d.png)

In reality, the chip is not that simple, and for firmware purposes you actually have to know the more complicated picture. But the above is the very basic and simplistic goal.

![LMK_Functional_Diagram](https://user-images.githubusercontent.com/90419779/210427379-29b2d2a3-8dbd-42f5-a3bd-2143247aec51.png)

From the functional block diagram you see that the way the chip works is there are 2 different clock inputs. Through the firmware you can choose which one to use. for the development of this code, a 125MHz oscillator was used. from there, the user can program up two 8 new clocks, all divided down from the input clock. The firmware only works with one of the output clocks, CLKOUT3. 

Now to get the code to work you have to send the chip 32bits of data. But the bits need to time up with a data clock. This is seperate from the input clock. This clock is only for the purpose of programming the FPGA to send the chip data at a specific frequency. For this clock, the code uses the MiMas on board clock at 100MHz, using patricks module for a rough clock divider, we divide this 100MHz down to 10MHz which the data can be processed at. 

You may ask, "hey buddy? if Patrick made a clock divider why dont we use that?" and I'd say, good question. I believe the answer is that Patricks clock divider takes in the clock and really creates a flag that goes up at a certain frequency. Its not really a clock. Clock domains are special, the FPGA is made with special routes for the on board clock, so to avoid glitches, everything needs to be running on the original 100MHz clock. Since we have something in the firmware, sending the data to the chip, that needs to operate at a lower frequency, we just create a flag that goes off at certain intervals. This allows the data to be fed to the LMK chip at a certain frequency, while the module as a whole is actually running everything at the same 100MHz frequency.
