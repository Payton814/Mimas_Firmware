set_property SRC_FILE_INFO {cfile:C:/Users/Payton/Vivado_Projects/Artix_7_MiMas_A7/Mimas_Firmware/Patricks_LMK_code/Patricks_LMK_code.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc rfile:../../../Patricks_LMK_code.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN "N11"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { clk }]     ;                # IO_L13P_T2_MRCC_14            Sch = CLK
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN "K12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[0] }];                      # IO_0_14                       Sch = LED0
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN "R11"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[1] }];                      # IO_L5P_T0_D06_14              Sch = LED1
set_property src_info {type:XDC file:1 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { IOSTANDARD LVCMOS25 PACKAGE_PIN "A8" } [get_ports {    LMKDATA     }]
set_property src_info {type:XDC file:1 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { IOSTANDARD LVCMOS25 PACKAGE_PIN "A9" } [get_ports {    LMKLE       }]
set_property src_info {type:XDC file:1 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { IOSTANDARD LVCMOS25 PACKAGE_PIN "L5" } [get_ports {    LMKCLK      }]
set_property src_info {type:XDC file:1 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { IOSTANDARD LVCMOS25 PACKAGE_PIN "D10" } [get_ports {    CLK_SYNC    }]
set_property src_info {type:XDC file:1 line:173 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict  { PACKAGE_PIN "D15"   IOSTANDARD LVCMOS25} [get_ports {CLK_PIN}];                        # IO_L15N_T2_DQS_ADV_B_15       Sch = GPIO_19_N
set_property src_info {type:XDC file:1 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict  { PACKAGE_PIN "C13"   IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports {LMKclk_N}];                        # IO_L12N_T1_MRCC_15            Sch = GPIO_21_N
set_property src_info {type:XDC file:1 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict  { PACKAGE_PIN "D13"   IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports {LMKclk_P}];                        # IO_L12P_T1_MRCC_15            Sch = GPIO_21_P
