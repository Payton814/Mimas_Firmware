
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: fdb445eb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:21 . Memory (MB): peak = 2012.582 ; gain = 54.2382default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: fdb445eb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:21 . Memory (MB): peak = 2012.609 ; gain = 54.2662default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: fdb445eb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:22 . Memory (MB): peak = 2018.625 ; gain = 60.2812default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: fdb445eb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:22 . Memory (MB): peak = 2018.625 ; gain = 60.2812default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 13440f2e7
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:27 ; elapsed = 00:00:23 . Memory (MB): peak = 2027.598 ; gain = 69.2542default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.512  | TNS=0.000  | WHS=-1.304 | THS=-45.323|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: eb7a0360
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:24 . Memory (MB): peak = 2027.598 ; gain = 69.2542default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
C
.Phase 3.1 Global Routing | Checksum: eb7a0360
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:24 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 19da9b783
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:24 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
12default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              sys_clk_pin |              sys_clk_pin |                                                                                               blink_reg/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.834  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: fd42a7b0
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.834  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 12e488441
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 12e488441
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 12e488441
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 12e488441
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 12e488441
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 19663b37b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.914  | TNS=0.000  | WHS=-0.074 | THS=-0.074 |
2default:defaultZ35-416h px? 
?

Phase %s%s
101*constraints2
6.1.2 2default:default25
!Lut RouteThru Assignment for hold2default:defaultZ18-101h px? 
X
CPhase 6.1.2 Lut RouteThru Assignment for hold | Checksum: 9ca057aa
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: 9ca057aa
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
v

Phase %s%s
101*constraints2
6.2 2default:default2'
Additional Hold Fix2default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.914  | TNS=0.000  | WHS=-0.074 | THS=-0.074 |
2default:defaultZ35-416h px? 
H
3Phase 6.2 Additional Hold Fix | Checksum: c50579d9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: e9fcfd7a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: e9fcfd7a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2030.402 ; gain = 72.0592default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: e9fcfd7a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2031.043 ; gain = 72.6992default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: c5e60b45
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2031.043 ; gain = 72.6992default:defaulth px? 
?
?Router was unable to fix hold violation on %s pins. This could be due to a combination of congestion, blockages and run-time limitations. Such pins are:
%s192*route2
12default:default2*
	counter/blink_i_1/I1
2default:defaultZ35-459h px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 10.1 Update Timing | Checksum: 5e0f014c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2031.043 ; gain = 72.6992default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.914  | TNS=0.000  | WHS=-0.074 | THS=-0.074 |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: 5e0f014c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2031.043 ; gain = 72.6992default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:27 . Memory (MB): peak = 2031.043 ; gain = 72.6992default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1122default:default2
72default:default2
102default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:362default:default2
00:00:292default:default2
2031.0432default:default2
72.6992default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2 
00:00:00.7112default:default2
2049.8672default:default2
18.8242default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2K
7M:/LMK_010101/LMK_010101.runs/impl_1/Talk_to_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2~
jExecuting : report_drc -file Talk_to_drc_routed.rpt -pb Talk_to_drc_routed.pb -rpx Talk_to_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2q
]report_drc -file Talk_to_drc_routed.rpt -pb Talk_to_drc_routed.pb -rpx Talk_to_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
;M:/LMK_010101/LMK_010101.runs/impl_1/Talk_to_drc_routed.rpt;M:/LMK_010101/LMK_010101.runs/impl_1/Talk_to_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file Talk_to_methodology_drc_routed.rpt -pb Talk_to_methodology_drc_routed.pb -rpx Talk_to_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file Talk_to_methodology_drc_routed.rpt -pb Talk_to_methodology_drc_routed.pb -rpx Talk_to_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
GM:/LMK_010101/LMK_010101.runs/impl_1/Talk_to_methodology_drc_routed.rptGM:/LMK_010101/LMK_010101.runs/impl_1/Talk_to_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
zExecuting : report_power -file Talk_to_power_routed.rpt -pb Talk_to_power_summary_routed.pb -rpx Talk_to_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
mreport_power -file Talk_to_power_routed.rpt -pb Talk_to_power_summary_routed.pb -rpx Talk_to_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1242default:default2
72default:default2
102default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2o
[Executing : report_route_status -file Talk_to_route_status.rpt -pb Talk_to_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file Talk_to_timing_summary_routed.rpt -pb Talk_to_timing_summary_routed.pb -rpx Talk_to_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2d
PExecuting : report_incremental_reuse -file Talk_to_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2d
PExecuting : report_clock_utilization -file Talk_to_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file Talk_to_bus_skew_routed.rpt -pb Talk_to_bus_skew_routed.pb -rpx Talk_to_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record