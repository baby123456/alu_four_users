//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Aug 16 21:01:24 2020
//Host        : ict-RH2288H-V3 running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target mpsoc_wrapper.bd
//Design      : mpsoc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mpsoc_wrapper
   (CarryOut,
    CarryOut1,
    CarryOut2,
    CarryOut3,
    Overflow,
    Overflow1,
    Overflow2,
    Overflow3,
    Result1_tri_i,
    Result2_tri_i,
    Result3_tri_i,
    Result_tri_i,
    Zero,
    Zero1,
    Zero2,
    Zero3,
    alu1_A_tri_o,
    alu1_B_tri_o,
    alu1_op_tri_o,
    alu2_A_tri_o,
    alu2_B_tri_o,
    alu2_op_tri_o,
    alu3_A_tri_o,
    alu3_B_tri_o,
    alu3_op_tri_o,
    alu_A_tri_o,
    alu_B_tri_o,
    alu_op_tri_o,
    mips1_cpu_axi_if_araddr,
    mips1_cpu_axi_if_arprot,
    mips1_cpu_axi_if_arready,
    mips1_cpu_axi_if_arvalid,
    mips1_cpu_axi_if_awaddr,
    mips1_cpu_axi_if_awprot,
    mips1_cpu_axi_if_awready,
    mips1_cpu_axi_if_awvalid,
    mips1_cpu_axi_if_bready,
    mips1_cpu_axi_if_bresp,
    mips1_cpu_axi_if_bvalid,
    mips1_cpu_axi_if_rdata,
    mips1_cpu_axi_if_rready,
    mips1_cpu_axi_if_rresp,
    mips1_cpu_axi_if_rvalid,
    mips1_cpu_axi_if_wdata,
    mips1_cpu_axi_if_wready,
    mips1_cpu_axi_if_wstrb,
    mips1_cpu_axi_if_wvalid,
    mips2_cpu_axi_if_araddr,
    mips2_cpu_axi_if_arprot,
    mips2_cpu_axi_if_arready,
    mips2_cpu_axi_if_arvalid,
    mips2_cpu_axi_if_awaddr,
    mips2_cpu_axi_if_awprot,
    mips2_cpu_axi_if_awready,
    mips2_cpu_axi_if_awvalid,
    mips2_cpu_axi_if_bready,
    mips2_cpu_axi_if_bresp,
    mips2_cpu_axi_if_bvalid,
    mips2_cpu_axi_if_rdata,
    mips2_cpu_axi_if_rready,
    mips2_cpu_axi_if_rresp,
    mips2_cpu_axi_if_rvalid,
    mips2_cpu_axi_if_wdata,
    mips2_cpu_axi_if_wready,
    mips2_cpu_axi_if_wstrb,
    mips2_cpu_axi_if_wvalid,
    mips3_cpu_axi_if_araddr,
    mips3_cpu_axi_if_arprot,
    mips3_cpu_axi_if_arready,
    mips3_cpu_axi_if_arvalid,
    mips3_cpu_axi_if_awaddr,
    mips3_cpu_axi_if_awprot,
    mips3_cpu_axi_if_awready,
    mips3_cpu_axi_if_awvalid,
    mips3_cpu_axi_if_bready,
    mips3_cpu_axi_if_bresp,
    mips3_cpu_axi_if_bvalid,
    mips3_cpu_axi_if_rdata,
    mips3_cpu_axi_if_rready,
    mips3_cpu_axi_if_rresp,
    mips3_cpu_axi_if_rvalid,
    mips3_cpu_axi_if_wdata,
    mips3_cpu_axi_if_wready,
    mips3_cpu_axi_if_wstrb,
    mips3_cpu_axi_if_wvalid,
    mips_cpu_axi_if_araddr,
    mips_cpu_axi_if_arprot,
    mips_cpu_axi_if_arready,
    mips_cpu_axi_if_arvalid,
    mips_cpu_axi_if_awaddr,
    mips_cpu_axi_if_awprot,
    mips_cpu_axi_if_awready,
    mips_cpu_axi_if_awvalid,
    mips_cpu_axi_if_bready,
    mips_cpu_axi_if_bresp,
    mips_cpu_axi_if_bvalid,
    mips_cpu_axi_if_rdata,
    mips_cpu_axi_if_rready,
    mips_cpu_axi_if_rresp,
    mips_cpu_axi_if_rvalid,
    mips_cpu_axi_if_wdata,
    mips_cpu_axi_if_wready,
    mips_cpu_axi_if_wstrb,
    mips_cpu_axi_if_wvalid,
    mips_cpu_reset_n,
    ps_fclk_clk0,
    ps_user1_reset_n,
    ps_user2_reset_n,
    ps_user3_reset_n,
    ps_user_reset_n,
    reg_file1_raddr1_tri_o,
    reg_file1_raddr2_tri_o,
    reg_file1_rdata1_tri_i,
    reg_file1_rdata2_tri_i,
    reg_file1_waddr_tri_o,
    reg_file1_wdata_tri_o,
    reg_file2_raddr1_tri_o,
    reg_file2_raddr2_tri_o,
    reg_file2_rdata1_tri_i,
    reg_file2_rdata2_tri_i,
    reg_file2_waddr_tri_o,
    reg_file2_wdata_tri_o,
    reg_file3_raddr1_tri_o,
    reg_file3_raddr2_tri_o,
    reg_file3_rdata1_tri_i,
    reg_file3_rdata2_tri_i,
    reg_file3_waddr_tri_o,
    reg_file3_wdata_tri_o,
    reg_file_raddr1_tri_o,
    reg_file_raddr2_tri_o,
    reg_file_rdata1_tri_i,
    reg_file_rdata2_tri_i,
    reg_file_rst,
    reg_file_waddr_tri_o,
    reg_file_wdata_tri_o,
    wen1_tri_o,
    wen2_tri_o,
    wen3_tri_o,
    wen_tri_o);
  input [0:0]CarryOut;
  input [0:0]CarryOut1;
  input [0:0]CarryOut2;
  input [0:0]CarryOut3;
  input [0:0]Overflow;
  input [0:0]Overflow1;
  input [0:0]Overflow2;
  input [0:0]Overflow3;
  input [31:0]Result1_tri_i;
  input [31:0]Result2_tri_i;
  input [31:0]Result3_tri_i;
  input [31:0]Result_tri_i;
  input [0:0]Zero;
  input [0:0]Zero1;
  input [0:0]Zero2;
  input [0:0]Zero3;
  output [31:0]alu1_A_tri_o;
  output [31:0]alu1_B_tri_o;
  output [2:0]alu1_op_tri_o;
  output [31:0]alu2_A_tri_o;
  output [31:0]alu2_B_tri_o;
  output [2:0]alu2_op_tri_o;
  output [31:0]alu3_A_tri_o;
  output [31:0]alu3_B_tri_o;
  output [2:0]alu3_op_tri_o;
  output [31:0]alu_A_tri_o;
  output [31:0]alu_B_tri_o;
  output [2:0]alu_op_tri_o;
  output [39:0]mips1_cpu_axi_if_araddr;
  output [2:0]mips1_cpu_axi_if_arprot;
  input [0:0]mips1_cpu_axi_if_arready;
  output [0:0]mips1_cpu_axi_if_arvalid;
  output [39:0]mips1_cpu_axi_if_awaddr;
  output [2:0]mips1_cpu_axi_if_awprot;
  input [0:0]mips1_cpu_axi_if_awready;
  output [0:0]mips1_cpu_axi_if_awvalid;
  output [0:0]mips1_cpu_axi_if_bready;
  input [1:0]mips1_cpu_axi_if_bresp;
  input [0:0]mips1_cpu_axi_if_bvalid;
  input [31:0]mips1_cpu_axi_if_rdata;
  output [0:0]mips1_cpu_axi_if_rready;
  input [1:0]mips1_cpu_axi_if_rresp;
  input [0:0]mips1_cpu_axi_if_rvalid;
  output [31:0]mips1_cpu_axi_if_wdata;
  input [0:0]mips1_cpu_axi_if_wready;
  output [3:0]mips1_cpu_axi_if_wstrb;
  output [0:0]mips1_cpu_axi_if_wvalid;
  output [39:0]mips2_cpu_axi_if_araddr;
  output [2:0]mips2_cpu_axi_if_arprot;
  input [0:0]mips2_cpu_axi_if_arready;
  output [0:0]mips2_cpu_axi_if_arvalid;
  output [39:0]mips2_cpu_axi_if_awaddr;
  output [2:0]mips2_cpu_axi_if_awprot;
  input [0:0]mips2_cpu_axi_if_awready;
  output [0:0]mips2_cpu_axi_if_awvalid;
  output [0:0]mips2_cpu_axi_if_bready;
  input [1:0]mips2_cpu_axi_if_bresp;
  input [0:0]mips2_cpu_axi_if_bvalid;
  input [31:0]mips2_cpu_axi_if_rdata;
  output [0:0]mips2_cpu_axi_if_rready;
  input [1:0]mips2_cpu_axi_if_rresp;
  input [0:0]mips2_cpu_axi_if_rvalid;
  output [31:0]mips2_cpu_axi_if_wdata;
  input [0:0]mips2_cpu_axi_if_wready;
  output [3:0]mips2_cpu_axi_if_wstrb;
  output [0:0]mips2_cpu_axi_if_wvalid;
  output [39:0]mips3_cpu_axi_if_araddr;
  output [2:0]mips3_cpu_axi_if_arprot;
  input [0:0]mips3_cpu_axi_if_arready;
  output [0:0]mips3_cpu_axi_if_arvalid;
  output [39:0]mips3_cpu_axi_if_awaddr;
  output [2:0]mips3_cpu_axi_if_awprot;
  input [0:0]mips3_cpu_axi_if_awready;
  output [0:0]mips3_cpu_axi_if_awvalid;
  output [0:0]mips3_cpu_axi_if_bready;
  input [1:0]mips3_cpu_axi_if_bresp;
  input [0:0]mips3_cpu_axi_if_bvalid;
  input [31:0]mips3_cpu_axi_if_rdata;
  output [0:0]mips3_cpu_axi_if_rready;
  input [1:0]mips3_cpu_axi_if_rresp;
  input [0:0]mips3_cpu_axi_if_rvalid;
  output [31:0]mips3_cpu_axi_if_wdata;
  input [0:0]mips3_cpu_axi_if_wready;
  output [3:0]mips3_cpu_axi_if_wstrb;
  output [0:0]mips3_cpu_axi_if_wvalid;
  output [39:0]mips_cpu_axi_if_araddr;
  output [2:0]mips_cpu_axi_if_arprot;
  input [0:0]mips_cpu_axi_if_arready;
  output [0:0]mips_cpu_axi_if_arvalid;
  output [39:0]mips_cpu_axi_if_awaddr;
  output [2:0]mips_cpu_axi_if_awprot;
  input [0:0]mips_cpu_axi_if_awready;
  output [0:0]mips_cpu_axi_if_awvalid;
  output [0:0]mips_cpu_axi_if_bready;
  input [1:0]mips_cpu_axi_if_bresp;
  input [0:0]mips_cpu_axi_if_bvalid;
  input [31:0]mips_cpu_axi_if_rdata;
  output [0:0]mips_cpu_axi_if_rready;
  input [1:0]mips_cpu_axi_if_rresp;
  input [0:0]mips_cpu_axi_if_rvalid;
  output [31:0]mips_cpu_axi_if_wdata;
  input [0:0]mips_cpu_axi_if_wready;
  output [3:0]mips_cpu_axi_if_wstrb;
  output [0:0]mips_cpu_axi_if_wvalid;
  input mips_cpu_reset_n;
  output ps_fclk_clk0;
  output ps_user1_reset_n;
  output ps_user2_reset_n;
  output ps_user3_reset_n;
  output ps_user_reset_n;
  output [4:0]reg_file1_raddr1_tri_o;
  output [4:0]reg_file1_raddr2_tri_o;
  input [31:0]reg_file1_rdata1_tri_i;
  input [31:0]reg_file1_rdata2_tri_i;
  output [4:0]reg_file1_waddr_tri_o;
  output [31:0]reg_file1_wdata_tri_o;
  output [4:0]reg_file2_raddr1_tri_o;
  output [4:0]reg_file2_raddr2_tri_o;
  input [31:0]reg_file2_rdata1_tri_i;
  input [31:0]reg_file2_rdata2_tri_i;
  output [4:0]reg_file2_waddr_tri_o;
  output [31:0]reg_file2_wdata_tri_o;
  output [4:0]reg_file3_raddr1_tri_o;
  output [4:0]reg_file3_raddr2_tri_o;
  input [31:0]reg_file3_rdata1_tri_i;
  input [31:0]reg_file3_rdata2_tri_i;
  output [4:0]reg_file3_waddr_tri_o;
  output [31:0]reg_file3_wdata_tri_o;
  output [4:0]reg_file_raddr1_tri_o;
  output [4:0]reg_file_raddr2_tri_o;
  input [31:0]reg_file_rdata1_tri_i;
  input [31:0]reg_file_rdata2_tri_i;
  output [0:0]reg_file_rst;
  output [4:0]reg_file_waddr_tri_o;
  output [31:0]reg_file_wdata_tri_o;
  output [0:0]wen1_tri_o;
  output [0:0]wen2_tri_o;
  output [0:0]wen3_tri_o;
  output [0:0]wen_tri_o;

  wire [0:0]CarryOut;
  wire [0:0]CarryOut1;
  wire [0:0]CarryOut2;
  wire [0:0]CarryOut3;
  wire [0:0]Overflow;
  wire [0:0]Overflow1;
  wire [0:0]Overflow2;
  wire [0:0]Overflow3;
  wire [31:0]Result1_tri_i;
  wire [31:0]Result2_tri_i;
  wire [31:0]Result3_tri_i;
  wire [31:0]Result_tri_i;
  wire [0:0]Zero;
  wire [0:0]Zero1;
  wire [0:0]Zero2;
  wire [0:0]Zero3;
  wire [31:0]alu1_A_tri_o;
  wire [31:0]alu1_B_tri_o;
  wire [2:0]alu1_op_tri_o;
  wire [31:0]alu2_A_tri_o;
  wire [31:0]alu2_B_tri_o;
  wire [2:0]alu2_op_tri_o;
  wire [31:0]alu3_A_tri_o;
  wire [31:0]alu3_B_tri_o;
  wire [2:0]alu3_op_tri_o;
  wire [31:0]alu_A_tri_o;
  wire [31:0]alu_B_tri_o;
  wire [2:0]alu_op_tri_o;
  wire [39:0]mips1_cpu_axi_if_araddr;
  wire [2:0]mips1_cpu_axi_if_arprot;
  wire [0:0]mips1_cpu_axi_if_arready;
  wire [0:0]mips1_cpu_axi_if_arvalid;
  wire [39:0]mips1_cpu_axi_if_awaddr;
  wire [2:0]mips1_cpu_axi_if_awprot;
  wire [0:0]mips1_cpu_axi_if_awready;
  wire [0:0]mips1_cpu_axi_if_awvalid;
  wire [0:0]mips1_cpu_axi_if_bready;
  wire [1:0]mips1_cpu_axi_if_bresp;
  wire [0:0]mips1_cpu_axi_if_bvalid;
  wire [31:0]mips1_cpu_axi_if_rdata;
  wire [0:0]mips1_cpu_axi_if_rready;
  wire [1:0]mips1_cpu_axi_if_rresp;
  wire [0:0]mips1_cpu_axi_if_rvalid;
  wire [31:0]mips1_cpu_axi_if_wdata;
  wire [0:0]mips1_cpu_axi_if_wready;
  wire [3:0]mips1_cpu_axi_if_wstrb;
  wire [0:0]mips1_cpu_axi_if_wvalid;
  wire [39:0]mips2_cpu_axi_if_araddr;
  wire [2:0]mips2_cpu_axi_if_arprot;
  wire [0:0]mips2_cpu_axi_if_arready;
  wire [0:0]mips2_cpu_axi_if_arvalid;
  wire [39:0]mips2_cpu_axi_if_awaddr;
  wire [2:0]mips2_cpu_axi_if_awprot;
  wire [0:0]mips2_cpu_axi_if_awready;
  wire [0:0]mips2_cpu_axi_if_awvalid;
  wire [0:0]mips2_cpu_axi_if_bready;
  wire [1:0]mips2_cpu_axi_if_bresp;
  wire [0:0]mips2_cpu_axi_if_bvalid;
  wire [31:0]mips2_cpu_axi_if_rdata;
  wire [0:0]mips2_cpu_axi_if_rready;
  wire [1:0]mips2_cpu_axi_if_rresp;
  wire [0:0]mips2_cpu_axi_if_rvalid;
  wire [31:0]mips2_cpu_axi_if_wdata;
  wire [0:0]mips2_cpu_axi_if_wready;
  wire [3:0]mips2_cpu_axi_if_wstrb;
  wire [0:0]mips2_cpu_axi_if_wvalid;
  wire [39:0]mips3_cpu_axi_if_araddr;
  wire [2:0]mips3_cpu_axi_if_arprot;
  wire [0:0]mips3_cpu_axi_if_arready;
  wire [0:0]mips3_cpu_axi_if_arvalid;
  wire [39:0]mips3_cpu_axi_if_awaddr;
  wire [2:0]mips3_cpu_axi_if_awprot;
  wire [0:0]mips3_cpu_axi_if_awready;
  wire [0:0]mips3_cpu_axi_if_awvalid;
  wire [0:0]mips3_cpu_axi_if_bready;
  wire [1:0]mips3_cpu_axi_if_bresp;
  wire [0:0]mips3_cpu_axi_if_bvalid;
  wire [31:0]mips3_cpu_axi_if_rdata;
  wire [0:0]mips3_cpu_axi_if_rready;
  wire [1:0]mips3_cpu_axi_if_rresp;
  wire [0:0]mips3_cpu_axi_if_rvalid;
  wire [31:0]mips3_cpu_axi_if_wdata;
  wire [0:0]mips3_cpu_axi_if_wready;
  wire [3:0]mips3_cpu_axi_if_wstrb;
  wire [0:0]mips3_cpu_axi_if_wvalid;
  wire [39:0]mips_cpu_axi_if_araddr;
  wire [2:0]mips_cpu_axi_if_arprot;
  wire [0:0]mips_cpu_axi_if_arready;
  wire [0:0]mips_cpu_axi_if_arvalid;
  wire [39:0]mips_cpu_axi_if_awaddr;
  wire [2:0]mips_cpu_axi_if_awprot;
  wire [0:0]mips_cpu_axi_if_awready;
  wire [0:0]mips_cpu_axi_if_awvalid;
  wire [0:0]mips_cpu_axi_if_bready;
  wire [1:0]mips_cpu_axi_if_bresp;
  wire [0:0]mips_cpu_axi_if_bvalid;
  wire [31:0]mips_cpu_axi_if_rdata;
  wire [0:0]mips_cpu_axi_if_rready;
  wire [1:0]mips_cpu_axi_if_rresp;
  wire [0:0]mips_cpu_axi_if_rvalid;
  wire [31:0]mips_cpu_axi_if_wdata;
  wire [0:0]mips_cpu_axi_if_wready;
  wire [3:0]mips_cpu_axi_if_wstrb;
  wire [0:0]mips_cpu_axi_if_wvalid;
  wire mips_cpu_reset_n;
  wire ps_fclk_clk0;
  wire ps_user1_reset_n;
  wire ps_user2_reset_n;
  wire ps_user3_reset_n;
  wire ps_user_reset_n;
  wire [4:0]reg_file1_raddr1_tri_o;
  wire [4:0]reg_file1_raddr2_tri_o;
  wire [31:0]reg_file1_rdata1_tri_i;
  wire [31:0]reg_file1_rdata2_tri_i;
  wire [4:0]reg_file1_waddr_tri_o;
  wire [31:0]reg_file1_wdata_tri_o;
  wire [4:0]reg_file2_raddr1_tri_o;
  wire [4:0]reg_file2_raddr2_tri_o;
  wire [31:0]reg_file2_rdata1_tri_i;
  wire [31:0]reg_file2_rdata2_tri_i;
  wire [4:0]reg_file2_waddr_tri_o;
  wire [31:0]reg_file2_wdata_tri_o;
  wire [4:0]reg_file3_raddr1_tri_o;
  wire [4:0]reg_file3_raddr2_tri_o;
  wire [31:0]reg_file3_rdata1_tri_i;
  wire [31:0]reg_file3_rdata2_tri_i;
  wire [4:0]reg_file3_waddr_tri_o;
  wire [31:0]reg_file3_wdata_tri_o;
  wire [4:0]reg_file_raddr1_tri_o;
  wire [4:0]reg_file_raddr2_tri_o;
  wire [31:0]reg_file_rdata1_tri_i;
  wire [31:0]reg_file_rdata2_tri_i;
  wire [0:0]reg_file_rst;
  wire [4:0]reg_file_waddr_tri_o;
  wire [31:0]reg_file_wdata_tri_o;
  wire [0:0]wen1_tri_o;
  wire [0:0]wen2_tri_o;
  wire [0:0]wen3_tri_o;
  wire [0:0]wen_tri_o;

  mpsoc mpsoc_i
       (.CarryOut(CarryOut),
        .CarryOut1(CarryOut1),
        .CarryOut2(CarryOut2),
        .CarryOut3(CarryOut3),
        .Overflow(Overflow),
        .Overflow1(Overflow1),
        .Overflow2(Overflow2),
        .Overflow3(Overflow3),
        .Result1_tri_i(Result1_tri_i),
        .Result2_tri_i(Result2_tri_i),
        .Result3_tri_i(Result3_tri_i),
        .Result_tri_i(Result_tri_i),
        .Zero(Zero),
        .Zero1(Zero1),
        .Zero2(Zero2),
        .Zero3(Zero3),
        .alu1_A_tri_o(alu1_A_tri_o),
        .alu1_B_tri_o(alu1_B_tri_o),
        .alu1_op_tri_o(alu1_op_tri_o),
        .alu2_A_tri_o(alu2_A_tri_o),
        .alu2_B_tri_o(alu2_B_tri_o),
        .alu2_op_tri_o(alu2_op_tri_o),
        .alu3_A_tri_o(alu3_A_tri_o),
        .alu3_B_tri_o(alu3_B_tri_o),
        .alu3_op_tri_o(alu3_op_tri_o),
        .alu_A_tri_o(alu_A_tri_o),
        .alu_B_tri_o(alu_B_tri_o),
        .alu_op_tri_o(alu_op_tri_o),
        .mips1_cpu_axi_if_araddr(mips1_cpu_axi_if_araddr),
        .mips1_cpu_axi_if_arprot(mips1_cpu_axi_if_arprot),
        .mips1_cpu_axi_if_arready(mips1_cpu_axi_if_arready),
        .mips1_cpu_axi_if_arvalid(mips1_cpu_axi_if_arvalid),
        .mips1_cpu_axi_if_awaddr(mips1_cpu_axi_if_awaddr),
        .mips1_cpu_axi_if_awprot(mips1_cpu_axi_if_awprot),
        .mips1_cpu_axi_if_awready(mips1_cpu_axi_if_awready),
        .mips1_cpu_axi_if_awvalid(mips1_cpu_axi_if_awvalid),
        .mips1_cpu_axi_if_bready(mips1_cpu_axi_if_bready),
        .mips1_cpu_axi_if_bresp(mips1_cpu_axi_if_bresp),
        .mips1_cpu_axi_if_bvalid(mips1_cpu_axi_if_bvalid),
        .mips1_cpu_axi_if_rdata(mips1_cpu_axi_if_rdata),
        .mips1_cpu_axi_if_rready(mips1_cpu_axi_if_rready),
        .mips1_cpu_axi_if_rresp(mips1_cpu_axi_if_rresp),
        .mips1_cpu_axi_if_rvalid(mips1_cpu_axi_if_rvalid),
        .mips1_cpu_axi_if_wdata(mips1_cpu_axi_if_wdata),
        .mips1_cpu_axi_if_wready(mips1_cpu_axi_if_wready),
        .mips1_cpu_axi_if_wstrb(mips1_cpu_axi_if_wstrb),
        .mips1_cpu_axi_if_wvalid(mips1_cpu_axi_if_wvalid),
        .mips2_cpu_axi_if_araddr(mips2_cpu_axi_if_araddr),
        .mips2_cpu_axi_if_arprot(mips2_cpu_axi_if_arprot),
        .mips2_cpu_axi_if_arready(mips2_cpu_axi_if_arready),
        .mips2_cpu_axi_if_arvalid(mips2_cpu_axi_if_arvalid),
        .mips2_cpu_axi_if_awaddr(mips2_cpu_axi_if_awaddr),
        .mips2_cpu_axi_if_awprot(mips2_cpu_axi_if_awprot),
        .mips2_cpu_axi_if_awready(mips2_cpu_axi_if_awready),
        .mips2_cpu_axi_if_awvalid(mips2_cpu_axi_if_awvalid),
        .mips2_cpu_axi_if_bready(mips2_cpu_axi_if_bready),
        .mips2_cpu_axi_if_bresp(mips2_cpu_axi_if_bresp),
        .mips2_cpu_axi_if_bvalid(mips2_cpu_axi_if_bvalid),
        .mips2_cpu_axi_if_rdata(mips2_cpu_axi_if_rdata),
        .mips2_cpu_axi_if_rready(mips2_cpu_axi_if_rready),
        .mips2_cpu_axi_if_rresp(mips2_cpu_axi_if_rresp),
        .mips2_cpu_axi_if_rvalid(mips2_cpu_axi_if_rvalid),
        .mips2_cpu_axi_if_wdata(mips2_cpu_axi_if_wdata),
        .mips2_cpu_axi_if_wready(mips2_cpu_axi_if_wready),
        .mips2_cpu_axi_if_wstrb(mips2_cpu_axi_if_wstrb),
        .mips2_cpu_axi_if_wvalid(mips2_cpu_axi_if_wvalid),
        .mips3_cpu_axi_if_araddr(mips3_cpu_axi_if_araddr),
        .mips3_cpu_axi_if_arprot(mips3_cpu_axi_if_arprot),
        .mips3_cpu_axi_if_arready(mips3_cpu_axi_if_arready),
        .mips3_cpu_axi_if_arvalid(mips3_cpu_axi_if_arvalid),
        .mips3_cpu_axi_if_awaddr(mips3_cpu_axi_if_awaddr),
        .mips3_cpu_axi_if_awprot(mips3_cpu_axi_if_awprot),
        .mips3_cpu_axi_if_awready(mips3_cpu_axi_if_awready),
        .mips3_cpu_axi_if_awvalid(mips3_cpu_axi_if_awvalid),
        .mips3_cpu_axi_if_bready(mips3_cpu_axi_if_bready),
        .mips3_cpu_axi_if_bresp(mips3_cpu_axi_if_bresp),
        .mips3_cpu_axi_if_bvalid(mips3_cpu_axi_if_bvalid),
        .mips3_cpu_axi_if_rdata(mips3_cpu_axi_if_rdata),
        .mips3_cpu_axi_if_rready(mips3_cpu_axi_if_rready),
        .mips3_cpu_axi_if_rresp(mips3_cpu_axi_if_rresp),
        .mips3_cpu_axi_if_rvalid(mips3_cpu_axi_if_rvalid),
        .mips3_cpu_axi_if_wdata(mips3_cpu_axi_if_wdata),
        .mips3_cpu_axi_if_wready(mips3_cpu_axi_if_wready),
        .mips3_cpu_axi_if_wstrb(mips3_cpu_axi_if_wstrb),
        .mips3_cpu_axi_if_wvalid(mips3_cpu_axi_if_wvalid),
        .mips_cpu_axi_if_araddr(mips_cpu_axi_if_araddr),
        .mips_cpu_axi_if_arprot(mips_cpu_axi_if_arprot),
        .mips_cpu_axi_if_arready(mips_cpu_axi_if_arready),
        .mips_cpu_axi_if_arvalid(mips_cpu_axi_if_arvalid),
        .mips_cpu_axi_if_awaddr(mips_cpu_axi_if_awaddr),
        .mips_cpu_axi_if_awprot(mips_cpu_axi_if_awprot),
        .mips_cpu_axi_if_awready(mips_cpu_axi_if_awready),
        .mips_cpu_axi_if_awvalid(mips_cpu_axi_if_awvalid),
        .mips_cpu_axi_if_bready(mips_cpu_axi_if_bready),
        .mips_cpu_axi_if_bresp(mips_cpu_axi_if_bresp),
        .mips_cpu_axi_if_bvalid(mips_cpu_axi_if_bvalid),
        .mips_cpu_axi_if_rdata(mips_cpu_axi_if_rdata),
        .mips_cpu_axi_if_rready(mips_cpu_axi_if_rready),
        .mips_cpu_axi_if_rresp(mips_cpu_axi_if_rresp),
        .mips_cpu_axi_if_rvalid(mips_cpu_axi_if_rvalid),
        .mips_cpu_axi_if_wdata(mips_cpu_axi_if_wdata),
        .mips_cpu_axi_if_wready(mips_cpu_axi_if_wready),
        .mips_cpu_axi_if_wstrb(mips_cpu_axi_if_wstrb),
        .mips_cpu_axi_if_wvalid(mips_cpu_axi_if_wvalid),
        .mips_cpu_reset_n(mips_cpu_reset_n),
        .ps_fclk_clk0(ps_fclk_clk0),
        .ps_user1_reset_n(ps_user1_reset_n),
        .ps_user2_reset_n(ps_user2_reset_n),
        .ps_user3_reset_n(ps_user3_reset_n),
        .ps_user_reset_n(ps_user_reset_n),
        .reg_file1_raddr1_tri_o(reg_file1_raddr1_tri_o),
        .reg_file1_raddr2_tri_o(reg_file1_raddr2_tri_o),
        .reg_file1_rdata1_tri_i(reg_file1_rdata1_tri_i),
        .reg_file1_rdata2_tri_i(reg_file1_rdata2_tri_i),
        .reg_file1_waddr_tri_o(reg_file1_waddr_tri_o),
        .reg_file1_wdata_tri_o(reg_file1_wdata_tri_o),
        .reg_file2_raddr1_tri_o(reg_file2_raddr1_tri_o),
        .reg_file2_raddr2_tri_o(reg_file2_raddr2_tri_o),
        .reg_file2_rdata1_tri_i(reg_file2_rdata1_tri_i),
        .reg_file2_rdata2_tri_i(reg_file2_rdata2_tri_i),
        .reg_file2_waddr_tri_o(reg_file2_waddr_tri_o),
        .reg_file2_wdata_tri_o(reg_file2_wdata_tri_o),
        .reg_file3_raddr1_tri_o(reg_file3_raddr1_tri_o),
        .reg_file3_raddr2_tri_o(reg_file3_raddr2_tri_o),
        .reg_file3_rdata1_tri_i(reg_file3_rdata1_tri_i),
        .reg_file3_rdata2_tri_i(reg_file3_rdata2_tri_i),
        .reg_file3_waddr_tri_o(reg_file3_waddr_tri_o),
        .reg_file3_wdata_tri_o(reg_file3_wdata_tri_o),
        .reg_file_raddr1_tri_o(reg_file_raddr1_tri_o),
        .reg_file_raddr2_tri_o(reg_file_raddr2_tri_o),
        .reg_file_rdata1_tri_i(reg_file_rdata1_tri_i),
        .reg_file_rdata2_tri_i(reg_file_rdata2_tri_i),
        .reg_file_rst(reg_file_rst),
        .reg_file_waddr_tri_o(reg_file_waddr_tri_o),
        .reg_file_wdata_tri_o(reg_file_wdata_tri_o),
        .wen1_tri_o(wen1_tri_o),
        .wen2_tri_o(wen2_tri_o),
        .wen3_tri_o(wen3_tri_o),
        .wen_tri_o(wen_tri_o));
endmodule
