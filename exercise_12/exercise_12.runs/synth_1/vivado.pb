
t
Command: %s
53*	vivadotcl2C
/synth_design -top ChaCha -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
103922default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
ChaCha2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
462default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ChaChaBlock2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
362default:default2 
chacha_block2default:default2
ChaChaBlock2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
582default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
ChaChaBlock2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
432default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
432default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
552default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
QuarterRound2default:default2d
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
432default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
QuarterRound2default:default2
12default:default2
12default:default2d
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
432default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
552default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
552default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
552default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
692default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
692default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
692default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
QuarterRound2default:default2b
NF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/QuarterRound.vhd2default:default2
362default:default2
qr2default:default2 
QuarterRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
692default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DoubleRound2default:default2
22default:default2
12default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
432default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
672default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DoubleRound2default:default2a
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/DoubleRound.vhd2default:default2
362default:default2
final_round2default:default2
DoubleRound2default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
742default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ChaChaBlock2default:default2
32default:default2
12default:default2c
MF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaChaBlock.vhd2default:default2
432default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ChaCha2default:default2
42default:default2
12default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
462default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.5142default:default2
1149.9142default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2w
aF:/Xilinx/Projects/exercise_12/exercise_12.srcs/constrs_1/imports/Xilinx/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2w
aF:/Xilinx/Projects/exercise_12/exercise_12.srcs/constrs_1/imports/Xilinx/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1149.9142default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0822default:default2
1149.9142default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 337   
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 320   
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 19    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [31]2default:default2
1st2default:default2*
input_ram_reg[0][31]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [31]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [31]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [30]2default:default2
1st2default:default2*
input_ram_reg[0][30]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [30]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [30]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [29]2default:default2
1st2default:default2*
input_ram_reg[0][29]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [29]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [29]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [28]2default:default2
1st2default:default2*
input_ram_reg[0][28]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [28]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [28]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [27]2default:default2
1st2default:default2*
input_ram_reg[0][27]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [27]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [27]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [26]2default:default2
1st2default:default2*
input_ram_reg[0][26]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [26]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [26]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [25]2default:default2
1st2default:default2*
input_ram_reg[0][25]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [25]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [25]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [24]2default:default2
1st2default:default2*
input_ram_reg[0][24]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [24]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [24]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [23]2default:default2
1st2default:default2*
input_ram_reg[0][23]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [23]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [23]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [22]2default:default2
1st2default:default2*
input_ram_reg[0][22]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [22]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [22]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [21]2default:default2
1st2default:default2*
input_ram_reg[0][21]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [21]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [21]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [20]2default:default2
1st2default:default2*
input_ram_reg[0][20]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [20]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [20]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [19]2default:default2
1st2default:default2*
input_ram_reg[0][19]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [19]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [19]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [18]2default:default2
1st2default:default2*
input_ram_reg[0][18]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [18]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [18]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [17]2default:default2
1st2default:default2*
input_ram_reg[0][17]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [17]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [17]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [16]2default:default2
1st2default:default2*
input_ram_reg[0][16]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [16]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [16]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [15]2default:default2
1st2default:default2*
input_ram_reg[0][15]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [15]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [15]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [14]2default:default2
1st2default:default2*
input_ram_reg[0][14]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [14]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [14]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [13]2default:default2
1st2default:default2*
input_ram_reg[0][13]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [13]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [13]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [12]2default:default2
1st2default:default2*
input_ram_reg[0][12]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [12]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [12]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [11]2default:default2
1st2default:default2*
input_ram_reg[0][11]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [11]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [11]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [10]2default:default2
1st2default:default2*
input_ram_reg[0][10]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][0] [10]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][0] [10]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [9]2default:default2
1st2default:default2)
input_ram_reg[0][9]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [9]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [9]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [8]2default:default2
1st2default:default2)
input_ram_reg[0][8]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [8]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [8]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [7]2default:default2
1st2default:default2)
input_ram_reg[0][7]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [7]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [7]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [6]2default:default2
1st2default:default2)
input_ram_reg[0][6]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [6]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [6]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [5]2default:default2
1st2default:default2)
input_ram_reg[0][5]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [5]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [5]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [4]2default:default2
1st2default:default2)
input_ram_reg[0][4]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [4]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [4]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [3]2default:default2
1st2default:default2)
input_ram_reg[0][3]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [3]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [3]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [2]2default:default2
1st2default:default2)
input_ram_reg[0][2]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [2]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [2]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [1]2default:default2
1st2default:default2)
input_ram_reg[0][1]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [1]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [1]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [0]2default:default2
1st2default:default2)
input_ram_reg[0][0]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2$
\input[0][0] [0]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][0] [0]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [31]2default:default2
1st2default:default2*
input_ram_reg[1][31]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [31]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [31]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [30]2default:default2
1st2default:default2*
input_ram_reg[1][30]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [30]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [30]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [29]2default:default2
1st2default:default2*
input_ram_reg[1][29]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [29]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [29]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [28]2default:default2
1st2default:default2*
input_ram_reg[1][28]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [28]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [28]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [27]2default:default2
1st2default:default2*
input_ram_reg[1][27]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [27]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [27]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [26]2default:default2
1st2default:default2*
input_ram_reg[1][26]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [26]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [26]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [25]2default:default2
1st2default:default2*
input_ram_reg[1][25]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [25]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [25]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [24]2default:default2
1st2default:default2*
input_ram_reg[1][24]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [24]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [24]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [23]2default:default2
1st2default:default2*
input_ram_reg[1][23]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [23]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [23]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [22]2default:default2
1st2default:default2*
input_ram_reg[1][22]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [22]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [22]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [21]2default:default2
1st2default:default2*
input_ram_reg[1][21]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [21]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [21]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [20]2default:default2
1st2default:default2*
input_ram_reg[1][20]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [20]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [20]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [19]2default:default2
1st2default:default2*
input_ram_reg[1][19]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [19]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [19]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [18]2default:default2
1st2default:default2*
input_ram_reg[1][18]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [18]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [18]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [17]2default:default2
1st2default:default2*
input_ram_reg[1][17]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [17]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [17]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [16]2default:default2
1st2default:default2*
input_ram_reg[1][16]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [16]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [16]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [15]2default:default2
1st2default:default2*
input_ram_reg[1][15]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [15]2default:default2
2nd2default:default2
GND2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [15]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [14]2default:default2
1st2default:default2*
input_ram_reg[1][14]/Q2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2%
\input[0][1] [14]2default:default2
2nd2default:default2
VCC2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6859h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-68592default:default2
1002default:defaultZ17-14h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [14]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [13]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [12]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [11]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][1] [10]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [9]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [8]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [7]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [6]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [5]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [4]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [3]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [2]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [1]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][1] [0]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [31]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [30]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [29]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [28]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [27]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [26]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [25]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [24]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [23]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [22]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [21]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [20]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [19]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [18]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [17]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [16]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [15]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [14]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [13]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [12]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [11]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][2] [10]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [9]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [8]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [7]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [6]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [5]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [4]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [3]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [2]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [1]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2$
\input[0][2] [0]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][3] [31]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][3] [30]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][3] [29]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2%
\input[0][3] [28]2default:default2^
HF:/Xilinx/Projects/exercise_12/exercise_12.srcs/sources_1/new/ChaCha.vhd2default:default2
602default:default8@Z8-6858h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-68582default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:28 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:37 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
tFinished IO Insertion : Time (s): cpu = 00:00:41 ; elapsed = 00:00:47 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:41 ; elapsed = 00:00:47 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:49 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:43 ; elapsed = 00:00:49 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:50 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Renaming Generated Nets : Time (s): cpu = 00:00:43 ; elapsed = 00:00:50 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |  2704|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |   112|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |  1300|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |  1160|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |  2300|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |  2959|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  6082|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |    64|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |    32|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |   480|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |    36|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    32|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:43 ; elapsed = 00:00:50 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 384 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:45 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:50 . Memory (MB): peak = 1149.914 ; gain = 0.000
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2
00:00:012default:default2
1149.9142default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
28002default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1149.9142default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
02default:default2
2002default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:582default:default2
00:01:072default:default2
1149.9142default:default2
141.8522default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BF:/Xilinx/Projects/exercise_12/exercise_12.runs/synth_1/ChaCha.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file ChaCha_utilization_synth.rpt -pb ChaCha_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Feb  1 19:27:51 20222default:defaultZ17-206h px? 


End Record