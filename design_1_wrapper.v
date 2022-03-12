//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Tue Mar 23 08:32:13 2021
//Host        : ME4166-17 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (PWM0,
    PWM1,
    PWM2,
    PWM3,
    clock_rtl,
    reset_rtl);
  output PWM0;
  output PWM1;
  output PWM2;
  output PWM3;
  input clock_rtl;
  input reset_rtl;

  wire PWM0;
  wire PWM1;
  wire PWM2;
  wire PWM3;
  wire clock_rtl;
  wire reset_rtl;

  design_1 design_1_i
       (.PWM0(PWM0),
        .PWM1(PWM1),
        .PWM2(PWM2),
        .PWM3(PWM3),
        .clock_rtl(clock_rtl),
        .reset_rtl(reset_rtl));
endmodule
