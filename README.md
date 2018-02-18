# Embedded Etcher
Design files related to a photo-sensitive layering method etching machine
everyone can build to produce prototypes quickly at home or in the lab.

## Architecture 
The etching machine consists basically out of two parts. The
first part is a UV light, which is used to develop a photo-sensitive PCB. Once
this has been done.  The PCB has to be treated with sodium hydroxide (NaOH)
dissolved in water. This removes the UV-sensitive plastic, where it has been
tackeled by the light. 

The second part is the actual etching machine, which is designed to be
compatible to euro cards (and even bigger ones). The etching machine is either
filled with sodium persulfate (Na<sub>2</sub>S<sub>2</sub>O<sub>8</sub>) or
iron(III) chloride (FeCl<sub>3</sub>) dissolved in water of course.

## RedheadOS

One of the byproducts of this project is a small real-time OS, which is ment to run on embedded platforms. It is based on fixed priority scheduling and includes some nice accessories, so one does not always have to reinvent the wheel for every new project.  

![ReadheadOS Structure.](https://github.com/m3x1m0m/EmbeddedEtcher/blob/master/docs/report/fig/redhead_os.png)


## UV Light 

### Driver Extension Board

![3D Preview from KiCad (1).](https://github.com/m3x1m0m/ecthing/blob/master/pcbs/extension_board/output/3d_pic_1.jpg)

This PCB is made to fit the [Nucleo-F103RB](http://www.st.com/en/evaluation-tools/nucleo-f103rb.html)
development board from STM. Features:
* 64 LED driver stages.
* 6.4 A (0.1 A per stage) and 24 V max. input.
* 0.2 A max. and 350 mW dissipation max. per stage. Stages can be left floating if unused without
the threat of damaging the device.
* 10 Bit Digital-to-Analog Converter (DAC) to steer the driver combined with feedback amplification
to achieve a tremendously fine resolution.
* Optional potentiometer to set the current.
* Control loop to guarantee the desired current and respond quickly to changing the setpoint.
* 2 rotary encoders and 1 tactile switch.
* I2C header.
* SPI header.
 
![3D Preview from KiCad (2).](https://github.com/m3x1m0m/ecthing/blob/master/pcbs/extension_board/output/3d_pic_2.jpg)
  
  It is important to mention, that the resistors for the non-inverting amplifier
  in the feedback loop are optimized to result in a maximum current of 33 mA for
  3.3 V in order to achieve higher currents different resistor values have to be
  chosen.   
  
  ![UV Lamp](https://github.com/m3x1m0m/ecthing/blob/master/photos/uv_lamp.jpg) 

## Cuvette 

The cuvette can be handcrafted. It is possible to buy the five glass pieces need
at a glassers shop or to cut it oneself. The glass parts can be glued together with
silicon.  
![Cuvette](https://github.com/m3x1m0m/ecthing/blob/master/photos/cuvette.jpg) 

