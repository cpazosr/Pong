# Pong
VHDL Version of Pong

Developed by @AgusDV and @cpazosr

Following top down methodology, the design of all the components that integrate the top entity. Programmed and tested in VHDL through Quartus Prime Lite v18.1 Designed and tested for Intel DE10-Lite alongside other simple digital buttons and joystick.

The structure goes as follows:

-->Pong.vhd

The highest entity that instantiates all components and integrates all pins for the use of the board.

&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;Two bits adder with no carry in and carry out bit for the result

&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;Sums 1 to a count of 10 bits.

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;|-->Contador10b.vhd

&emsp;&emsp;Counter of 10 bits numbers

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;|-->ContadorMod525.vhd

&emsp;&emsp;Counter with modulus 525

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;|-->ContadorMod800.vhd

&emsp;&emsp;Counter with modulus 800

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;&emsp;&emsp;|-->Contador10b.vhd

&emsp;&emsp;|-->SyncVGA800x525.vhd

&emsp;&emsp;Synchronization with VGA 800x525 graphics

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;&emsp;&emsp;|-->Contador10b.vhd

&emsp;&emsp;&emsp;&emsp;|-->ContadorMod525.vhd

&emsp;&emsp;&emsp;&emsp;|-->ContadorMod800.vhd

&emsp;&emsp;|-->RGBpong.vhd

&emsp;&emsp;RGB behavioural programming of the movement of graphics in the game

&emsp;&emsp;&emsp;&emsp;|-->HalfAdder.vhd

&emsp;&emsp;&emsp;&emsp;|-->MasUno10b.vhd

&emsp;&emsp;&emsp;&emsp;|-->Contador10b.vhd

&emsp;&emsp;&emsp;&emsp;|-->ContadorMod525.vhd

&emsp;&emsp;&emsp;&emsp;|-->ContadorMod800.vhd

&emsp;&emsp;&emsp;&emsp;|-->SyncVGA800x525.vhd

&emsp;&emsp;|-->FlipFlopJK.vhd

&emsp;&emsp;Entity with the behaviour of FlipFlop JK

&emsp;&emsp;|-->DivisorFrecuenciaPorMitad.vhd

&emsp;&emsp;Divides CLK signal by half

### Hardware

![Pong Board noted](https://github.com/cpazosr/Pong/assets/67598380/2e0fc029-e748-4f59-849e-3bd8b8ac2eb4)

### Solution

The solutions is based on VGA synchronization of two pulses, one vertical and another horizontal. Visible zone is in the middle size of 640x480, with black pixel zones around, that's why it is used 800x525 as well as those black zones lengths are specified in the card documentation.

Counters and sums are of 10 bits because those are the minimum bits for reaching the pixel length numbers. Counters are used to iterate through the vertical and horizontal sync. Pixels are colored black if in the black zones, otherwise in the visibile zone, it follows the RGB game logic by colouring pixels accoring to the gameplay and interactions. Synchronization of each pulse occurs through a state machine each.

Synchronization needs to occur at a CLK signal of 25Mhz, obtained by the frequency divider. 

The game has been adapted to be played either manually or automatically. The user will always be the left paddle, and is controlled through the joystick. The right paddle is set to auto mode by default, which just follows the ball vertical movement. If changed to manual, the paddle could be controlled with two switches in the board. A reset button is placed to restart game, and a START switch is also placed to start the game. Difficulty can be changed with two switches -> two bits for 4 combinations:
-00 for easy and slow in both axes
-01 for faster horizontal movement of ball
-10 for faster vertical movement of ball
-11 for hard and fast game in both axes

### Results

You can check out a video result of gameplay here: https://drive.google.com/file/d/1P7beXKeYekJntrCFTFzXvRsoRuTPaPKd/view?usp=sharing 

You can find further information in the report (Spanish version)
