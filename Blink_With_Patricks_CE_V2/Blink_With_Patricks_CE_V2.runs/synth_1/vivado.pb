
x
Command: %s
53*	vivadotcl2G
3synth_design -top Blink_Maybe -part xc7a35tftg256-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tftg256-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
242122default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1127.805 ; gain = 15.348
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Blink_Maybe2default:default2
 2default:default2m
WQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/new/Blink_Maybe.v2default:default2
232default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter FREQ1 bound to: 20000000 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 25 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

clk_div_ce2default:default2
 2default:default2?
?Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v2default:default2
242default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter CLK_DIVIDE bound to: 5'b00100 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter EXTRA_DIV2 bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
SRLC32E2default:default2
 2default:default2Q
;C:/Users/Payton/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
781842default:default8@Z8-6157h px? 
l
%s
*synth2T
@	Parameter INIT bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_CLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SRLC32E2default:default2
 2default:default2
12default:default2
12default:default2Q
;C:/Users/Payton/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
781842default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Q312default:default2
SRLC32E2default:default2
u_srl2default:default2?
?Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v2default:default2
322default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CE2default:default2
SRLC32E2default:default2
u_srl2default:default2?
?Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v2default:default2
322default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
u_srl2default:default2
SRLC32E2default:default2
62default:default2
42default:default2?
?Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v2default:default2
322default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clk_div_ce2default:default2
 2default:default2
22default:default2
12default:default2?
?Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ClockDiv2default:default2
 2default:default2w
aQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/new/CLK_DIV_20MHz.v2default:default2
232default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter P bound to: 0 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter N bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2w
aQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/new/CLK_DIV_20MHz.v2default:default2
392default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ClockDiv2default:default2
 2default:default2
32default:default2
12default:default2w
aQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/imports/new/CLK_DIV_20MHz.v2default:default2
232default:default8@Z8-6155h px? 
?
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2m
WQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/new/Blink_Maybe.v2default:default2
392default:default8@Z8-4446h px? 
?
synthesizing module '%s'%s4497*oasys2
ila_02default:default2
 2default:default2?
{Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.runs/synth_1/.Xil/Vivado-26944-DESKTOP-0RQFACS/realtime/ila_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ila_02default:default2
 2default:default2
42default:default2
12default:default2?
{Q:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.runs/synth_1/.Xil/Vivado-26944-DESKTOP-0RQFACS/realtime/ila_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
ila_02default:default2m
WQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/new/Blink_Maybe.v2default:default2
392default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
ClockDiv2default:default2m
WQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/new/Blink_Maybe.v2default:default2
372default:default8@Z8-6071h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Blink_Maybe2default:default2
 2default:default2
52default:default2
12default:default2m
WQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/sources_1/new/Blink_Maybe.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1183.977 ; gain = 71.520
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1201.906 ; gain = 89.449
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1201.906 ; gain = 89.449
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
00:00:00.0012default:default2
1213.9612default:default2
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
$Parsing XDC File [%s] for cell '%s'
848*designutils2~
hq:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2
ila_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2~
hq:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.gen/sources_1/ip/ila_0/ila_0/ila_0_in_context.xdc2default:default2
ila_0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2y
cQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2y
cQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2w
cQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc2default:default21
.Xil/Blink_Maybe_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1302.3362default:default2
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
00:00:00.0052default:default2
1302.3362default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
J
%s
*synth22
Loading part: xc7a35tftg256-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
,	   2 Input   25 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 3     
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
.	   2 Input      1 Bit         XORs := 1     
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
.	               25 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
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
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
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
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
}Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
|Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
vFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |ila_0         |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |ila     |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |BUFG    |     1|
2default:defaulth px? 
E
%s*synth2-
|3     |CARRY4  |     7|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |     2|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |     3|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |     4|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |     5|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |     6|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |     3|
2default:defaulth px? 
E
%s*synth2-
|10    |SRLC32E |     1|
2default:defaulth px? 
E
%s*synth2-
|11    |FDRE    |    37|
2default:defaulth px? 
E
%s*synth2-
|12    |IBUF    |     1|
2default:defaulth px? 
E
%s*synth2-
|13    |OBUF    |     1|
2default:defaulth px? 
E
%s*synth2-
|14    |OBUFT   |     2|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 1302.336 ; gain = 89.449
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1302.336 ; gain = 189.879
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
00:00:002default:default2
1302.3362default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
72default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
?
TInstance %s has IOB = TRUE property, but it cannot be placed in an OLOGIC site. %s.
132*constraints2*
	blink_reg		blink_reg2default:default2?
?Instance blink_reg cannot be placed in site OLOGIC_X0Y0 because the output signal of the cell requires general routing to fabric and cells placed in OLOGIC can only be routed to delay or I/O site.
2default:default8Z18-132h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1314.2382default:default2
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
282default:default2
102default:default2
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
00:00:282default:default2
00:00:312default:default2
1314.2382default:default2
201.7812default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2g
SQ:/Blink_With_Patricks_CE_V2/Blink_With_Patricks_CE_V2.runs/synth_1/Blink_Maybe.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file Blink_Maybe_utilization_synth.rpt -pb Blink_Maybe_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 10 09:18:48 20222default:defaultZ17-206h px? 


End Record