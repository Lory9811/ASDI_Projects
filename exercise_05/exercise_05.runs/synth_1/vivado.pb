
w
Command: %s
53*	vivadotcl2F
2synth_design -top stopwatch -part xc7a100tcsg324-12default:defaultZ4-113h px? 
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
140922default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1014.344 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	stopwatch2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
482default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter divider bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
clock_divider2default:default2c
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
342default:default2'
display_clk_divider2default:default2!
clock_divider2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1362default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
clock_divider2default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter divider bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
clock_divider2default:default2
12default:default2
12default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
control_unit2default:default2b
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
342default:default2
cu2default:default2 
control_unit2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1472default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
control_unit2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
582default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter divider bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
clock_divider2default:default2c
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
342default:default2'
seconds_clk_divider2default:default2!
clock_divider2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
902default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys21
clock_divider__parameterized12default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter divider bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys21
clock_divider__parameterized12default:default2
12default:default2
12default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-256h px? 
`
%s
*synth2H
4	Parameter divider bound to: 10000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
clock_divider2default:default2c
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
342default:default2&
sample_clk_divider2default:default2!
clock_divider2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1012default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys21
clock_divider__parameterized32default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter divider bound to: 10000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys21
clock_divider__parameterized32default:default2
12default:default2
12default:default2e
OF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/clock_divider.vhd2default:default2
462default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

seconds_in2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

minutes_in2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
hours_in2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
seconds_load_value2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
minutes_load_value2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
hours_load_value2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
current_read_address2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1572default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
control_unit2default:default2
22default:default2
12default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
582default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1702default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
bcd_counter2default:default2c
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
452default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

load_value2default:default2c
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
502default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
bcd_counter2default:default2
32default:default2
12default:default2c
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
452default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1702default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1812default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1812default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1922default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bcd_counter2default:default2a
MF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/bcd_counter.vhd2default:default2
342default:default2
counter2default:default2
bcd_counter2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
1922default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
display_controller2default:default2h
TF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/display_controller.vhd2default:default2
342default:default2
disp_ctl2default:default2&
display_controller2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
2032default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
display_controller2default:default2j
TF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/display_controller.vhd2default:default2
452default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
display_controller2default:default2
42default:default2
12default:default2j
TF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/display_controller.vhd2default:default2
452default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
display_driver2default:default2l
XF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/imports/new/display_driver.vhd2default:default2
342default:default2
driver2default:default2"
display_driver2default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
2132default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
display_driver2default:default2n
XF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/imports/new/display_driver.vhd2default:default2
412default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
display_driver2default:default2
52default:default2
12default:default2n
XF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/imports/new/display_driver.vhd2default:default2
412default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	stopwatch2default:default2
62default:default2
12default:default2a
KF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/stopwatch.vhd2default:default2
482default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
00:00:002default:default2 
00:00:00.0102default:default2
1014.3442default:default2
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
aF:/Xilinx/Projects/exercise_05/exercise_05.srcs/constrs_1/imports/Xilinx/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2w
aF:/Xilinx/Projects/exercise_05/exercise_05.srcs/constrs_1/imports/Xilinx/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2u
aF:/Xilinx/Projects/exercise_05/exercise_05.srcs/constrs_1/imports/Xilinx/Nexys-A7-100T-Master.xdc2default:default2/
.Xil/stopwatch_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1014.3442default:default2
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
00:00:00.0192default:default2
1014.3442default:default2
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
}Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1014.344 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2#
seconds_out_reg2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
minutes_out_reg2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1612default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
hours_out_reg2default:default2d
NF:/Xilinx/Projects/exercise_05/exercise_05.srcs/sources_1/new/control_unit.vhd2default:default2
1622default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
,	   2 Input   32 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
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
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
h
%s
*synth2P
<	               96 Bit	(4 X 24 bit)          RAMs := 1     
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
,	   2 Input   32 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 29    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 31    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
{
%s*synth2c
O+------------+--------------+-----------+----------------------+-------------+
2default:defaulth px? 
|
%s*synth2d
P|Module Name | RTL Object   | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px? 
{
%s*synth2c
O+------------+--------------+-----------+----------------------+-------------+
2default:defaulth px? 
|
%s*synth2d
P|stopwatch   | cu/snaps_reg | Implied   | 4 x 24               | RAM32M x 4	 | 
2default:defaulth px? 
|
%s*synth2d
P+------------+--------------+-----------+----------------------+-------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
{Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1014.344 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
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
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
{
%s
*synth2c
O+------------+--------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
|
%s
*synth2d
P|Module Name | RTL Object   | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
? 
{
%s
*synth2c
O+------------+--------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
|
%s
*synth2d
P|stopwatch   | cu/snaps_reg | Implied   | 4 x 24               | RAM32M x 4	 | 
2default:defaulth p
x
? 
|
%s
*synth2d
P+------------+--------------+-----------+----------------------+-------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
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
zFinished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
tFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
Finished Renaming Generated Nets : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    24|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     4|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    13|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    65|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    62|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    41|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    61|
2default:defaulth px? 
D
%s*synth2,
|9     |RAM32M |     4|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |    35|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |    24|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE   |   140|
2default:defaulth px? 
D
%s*synth2,
|13    |FDSE   |     6|
2default:defaulth px? 
D
%s*synth2,
|14    |LD     |    24|
2default:defaulth px? 
D
%s*synth2,
|15    |LDC    |    24|
2default:defaulth px? 
D
%s*synth2,
|16    |IBUF   |     7|
2default:defaulth px? 
D
%s*synth2,
|17    |OBUF   |    16|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:30 . Memory (MB): peak = 1014.344 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1014.344 ; gain = 0.000
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
00:00:002default:default2 
00:00:00.0082default:default2
1014.3442default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
762default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
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
00:00:002default:default2
1014.3442default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 52 instances were transformed.
  LD => LDCE: 24 instances
  LDC => LDCE: 24 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:362default:default2
00:00:402default:default2
1014.3442default:default2
0.0002default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Y
EF:/Xilinx/Projects/exercise_05/exercise_05.runs/synth_1/stopwatch.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file stopwatch_utilization_synth.rpt -pb stopwatch_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jan 30 19:29:21 20222default:defaultZ17-206h px? 


End Record