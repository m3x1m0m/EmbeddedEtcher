# Embedded Etcher
Design files related to a photo-sensitive layering method etching machine
everyone can build to produce prototypes quickly at home or in the lab.

## Architecture The etching machine consists basically out of two parts. The
first part is a UV light, which is used to develop a photo-sensitive PCB. Once
this has been done.  The PCB has to be treated with sodium hydroxide (NaOH)
dissolved in water. This removes the UV-sensitive plastic, where it has been
tackeled by the light. 

The second part is the actual etching machine, which is designed to be
compatible to euro cards (and even bigger ones). The etching machine is either
filled with sodium persulfate (Na<sub>2</sub>S<sub>2</sub>O<sub>8</sub>) or
iron(III) chloride (FeCl<sub>3</sub>) dissolved in water of course.

## Cuvette 
![alt text](https://github.com/m3x1m0m/ecthing/blob/master/photos/cuvette.jpg) 
## UV Light 
### Driver Extension Board

![3D Preview from KiCad (1).](https://github.com/m3x1m0m/ecthing/blob/master/pcbs/extension_board/output/3d_pic_1.jpg)

This PCB is made to fit the [Nucleo-F103RB](http://www.st.com/en/evaluation-tools/nucleo-f103rb.html)
development board from STM. Features:
- 64 LED driving stages
- 3.36 A and 26 V max. input (0.05 A per stage results in 3.2 A)
- 0.1 A max. per stage
- 10 Bit DAC to steer the driver
- Optional potentiometer to steer the drivers
- Control-loop for constant current
- Feedback amplification to get a high current resolution
- I2C header
- SPI header
- 2 rotary encoder and 1 tactile switch
 
![3D Preview from KiCad (2).](https://github.com/m3x1m0m/ecthing/blob/master/pcbs/extension_board/output/3d_pic_2.jpg)
  
  It is important to mention, that the resistors for the non-inverting amplifier
  in the feedback loop are optimized to result in a maximum current of 33 mA for
  3.3 V in order to achieve higher currents different resistor values have to be
  chosen.   
  
  ![alt text](https://github.com/m3x1m0m/ecthing/blob/master/photos/uv_lamp.jpg) 

## Etching Instruction 
TBD 
