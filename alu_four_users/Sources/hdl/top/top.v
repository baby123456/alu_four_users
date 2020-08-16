//////////////////////////////////////////////////////////////////////////////
//  Top-level, static design
//////////////////////////////////////////////////////////////////////////////

`define DATA_WIDTH 32

module top(
);
    	wire [31:0] A;
    	wire [31:0] B;
	wire [2:0] ALUop;
	wire Overflow;
	wire CarryOut;
	wire Zero;
   	wire [31:0] Result;
    
    	wire [31:0] A1;
    	wire [31:0] B1;
	wire [2:0] ALUop1;
	wire Overflow1;
	wire CarryOut1;
	wire Zero1;
    	wire [31:0] Result1;
    
    	wire [31:0] A2;
    	wire [31:0] B2;
	wire [2:0] ALUop2;
	wire Overflow2;
	wire CarryOut2;
	wire Zero2;
    	wire [31:0] Result2;
    
    	wire [31:0] A3;
    	wire [31:0] B3;
	wire [2:0] ALUop3;
	wire Overflow3;
	wire CarryOut3;
	wire Zero3;
    	wire [31:0] Result3;
    
	
    mpsoc_wrapper u_mpsoc_wrapper(
    .CarryOut                                   (CarryOut),
    .CarryOut1                                  (CarryOut1),
    .CarryOut2                                  (CarryOut2),
    .CarryOut3                                  (CarryOut3),
    .Overflow                                   (Overflow),
    .Overflow1                                  (Overflow1),
    .Overflow2                                  (Overflow2),
    .Overflow3                                  (Overflow3),
    .Result1_tri_i                              (Result1),
    .Result2_tri_i                              (Result2),
    .Result3_tri_i                              (Result3),
    .Result_tri_i                               (Result),
    .Zero                                       (Zero),
    .Zero1                                      (Zero1),
    .Zero2                                      (Zero2),
    .Zero3                                      (Zero3),
    .alu1_A_tri_o                               (A1),
    .alu1_B_tri_o                               (B1),
    .alu1_op_tri_o                              (ALUop1),
    .alu2_A_tri_o                               (A2),
    .alu2_B_tri_o                               (B2),
    .alu2_op_tri_o                              (ALUop2),
    .alu3_A_tri_o                               (A3),
    .alu3_B_tri_o                               (B3),
    .alu3_op_tri_o                              (ALUop3),
    .alu_A_tri_o                                (A),
    .alu_B_tri_o                                (B),
    .alu_op_tri_o                               (ALUop),
    
    .mips1_cpu_axi_if_araddr                    (),
    .mips1_cpu_axi_if_arprot                    (),
    .mips1_cpu_axi_if_arready                   (),
    .mips1_cpu_axi_if_arvalid                   (),
    .mips1_cpu_axi_if_awaddr                    (),
    .mips1_cpu_axi_if_awprot                    (),
    .mips1_cpu_axi_if_awready                   (),
    .mips1_cpu_axi_if_awvalid                   (),
    .mips1_cpu_axi_if_bready                    (),
    .mips1_cpu_axi_if_bresp                     (),        
    .mips1_cpu_axi_if_bvalid                    (),
    .mips1_cpu_axi_if_rdata                     (),
    .mips1_cpu_axi_if_rready                    (),
    .mips1_cpu_axi_if_rresp                     (),
    .mips1_cpu_axi_if_rvalid                    (),
    .mips1_cpu_axi_if_wdata                     (),
    .mips1_cpu_axi_if_wready                    (),
    .mips1_cpu_axi_if_wstrb                     (),
    .mips1_cpu_axi_if_wvalid                    (),
    .mips2_cpu_axi_if_araddr                    (),
    .mips2_cpu_axi_if_arprot                    (),
    .mips2_cpu_axi_if_arready                   (),
    .mips2_cpu_axi_if_arvalid                   (),
    .mips2_cpu_axi_if_awaddr                    (),
    .mips2_cpu_axi_if_awprot                    (),
    .mips2_cpu_axi_if_awready                   (),
    .mips2_cpu_axi_if_awvalid                   (),
    .mips2_cpu_axi_if_bready                    (),
    .mips2_cpu_axi_if_bresp                     (),
    .mips2_cpu_axi_if_bvalid                    (),
    .mips2_cpu_axi_if_rdata                     (),
    .mips2_cpu_axi_if_rready                    (),
    .mips2_cpu_axi_if_rresp                     (),
    .mips2_cpu_axi_if_rvalid                    (),
    .mips2_cpu_axi_if_wdata                     (),
    .mips2_cpu_axi_if_wready                    (),
    .mips2_cpu_axi_if_wstrb                     (),
    .mips2_cpu_axi_if_wvalid                    (),
    .mips3_cpu_axi_if_araddr                    (),
    .mips3_cpu_axi_if_arprot                    (),
    .mips3_cpu_axi_if_arready                   (),
    .mips3_cpu_axi_if_arvalid                   (),
    .mips3_cpu_axi_if_awaddr                    (),
    .mips3_cpu_axi_if_awprot                    (),
    .mips3_cpu_axi_if_awready                   (),
    .mips3_cpu_axi_if_awvalid                   (),
    .mips3_cpu_axi_if_bready                    (),
    .mips3_cpu_axi_if_bresp                     (),
    .mips3_cpu_axi_if_bvalid                    (),
    .mips3_cpu_axi_if_rdata                     (),
    .mips3_cpu_axi_if_rready                    (),
    .mips3_cpu_axi_if_rresp                     (),
    .mips3_cpu_axi_if_rvalid                    (),
    .mips3_cpu_axi_if_wdata                     (),
    .mips3_cpu_axi_if_wready                    (),
    .mips3_cpu_axi_if_wstrb                     (),
    .mips3_cpu_axi_if_wvalid                    (),
    
    .mips_cpu_axi_if_araddr                     (),
    .mips_cpu_axi_if_arprot                     (),
    .mips_cpu_axi_if_arready                    (),
    .mips_cpu_axi_if_arvalid                    (),
    .mips_cpu_axi_if_awaddr                     (),
    .mips_cpu_axi_if_awprot                     (),
    .mips_cpu_axi_if_awready                    (),
    .mips_cpu_axi_if_awvalid                    (),
    .mips_cpu_axi_if_bready                     (),
    .mips_cpu_axi_if_bresp                      (),
    .mips_cpu_axi_if_bvalid                     (),
    .mips_cpu_axi_if_rdata                      (),
    .mips_cpu_axi_if_rready                     (),
    .mips_cpu_axi_if_rresp                      (),
    .mips_cpu_axi_if_rvalid                     (),
    .mips_cpu_axi_if_wdata                      (),
    .mips_cpu_axi_if_wready                     (),
    .mips_cpu_axi_if_wstrb                      (),
    .mips_cpu_axi_if_wvalid                     (),
    .mips_cpu_reset_n                           (),
    
    .ps_fclk_clk0                               (),
    .ps_user1_reset_n                           (),
    .ps_user2_reset_n                           (),
    .ps_user3_reset_n                           (),
    .ps_user_reset_n                            (),
    
    .reg_file1_raddr1_tri_o                     (),
    .reg_file1_raddr2_tri_o                     (),
    .reg_file1_rdata1_tri_i                     (),
    .reg_file1_rdata2_tri_i                     (),
    .reg_file1_waddr_tri_o                      (),
    .reg_file1_wdata_tri_o                      (),
    .reg_file2_raddr1_tri_o                     (),
    .reg_file2_raddr2_tri_o                     (),
    .reg_file2_rdata1_tri_i                     (),
    .reg_file2_rdata2_tri_i                     (),
    .reg_file2_waddr_tri_o                      (),
    .reg_file2_wdata_tri_o                      (),
    .reg_file3_raddr1_tri_o                     (),
    .reg_file3_raddr2_tri_o                     (),
    .reg_file3_rdata1_tri_i                     (),
    .reg_file3_rdata2_tri_i                     (),
    .reg_file3_waddr_tri_o                      (),
    .reg_file3_wdata_tri_o                      (),
    .reg_file_raddr1_tri_o                      (),
    .reg_file_raddr2_tri_o                      (),
    .reg_file_rdata1_tri_i                      (),
    .reg_file_rdata2_tri_i                      (),
    .reg_file_rst                               (),
    .reg_file_waddr_tri_o                       (),
    .reg_file_wdata_tri_o                       (),
    .wen1_tri_o                                 (),
    .wen2_tri_o                                 (),
    .wen3_tri_o                                 (),
    .wen_tri_o                                  ()
    
    );
   
   // instantiate module shift
   user1 inst_alu_user1 (
    	.A                          (A),
	.B                          (B),
	.ALUop                      (ALUop),
	.Overflow                   (Overflow),
	.CarryOut                   (CarryOut),
	.Zero                       (Zero),
	.Result                     (Result)
   );
 
   // instantiate module count
   user2 inst_alu_user2(
    	.A                          (A1),
	.B                          (B1),
	.ALUop                      (ALUop1),
	.Overflow                   (Overflow1),
	.CarryOut                   (CarryOut1),
	.Zero                       (Zero1),
	.Result                     (Result1)
   );
   
      // instantiate module shift
   user3 inst_alu_user3 (
    	.A                          (A2),
	.B                          (B2),
	.ALUop                      (ALUop2),
	.Overflow                   (Overflow2),
	.CarryOut                   (CarryOut2),
	.Zero                       (Zero2),
	.Result                     (Result2)
   );
 
   // instantiate module count
   user4 inst_alu_user4(
    	.A                          (A3),
	.B                          (B3),
	.ALUop                      (ALUop3),
	.Overflow                   (Overflow3),
	.CarryOut                   (CarryOut3),
	.Zero                       (Zero3),
	.Result                     (Result3)
   );
endmodule

// black box definition for module_alu
module user1(
	input [`DATA_WIDTH - 1:0] A,
	input [`DATA_WIDTH - 1:0] B,
	input [2:0] ALUop,
	output Overflow,
	output CarryOut,
	output Zero,
	output [`DATA_WIDTH - 1:0] Result
);
endmodule

// black box definition for module_alu
module user2(
	input [`DATA_WIDTH - 1:0] A,
	input [`DATA_WIDTH - 1:0] B,
	input [2:0] ALUop,
	output Overflow,
	output CarryOut,
	output Zero,
	output [`DATA_WIDTH - 1:0] Result
);
endmodule

module user3(
	input [`DATA_WIDTH - 1:0] A,
	input [`DATA_WIDTH - 1:0] B,
	input [2:0] ALUop,
	output Overflow,
	output CarryOut,
	output Zero,
	output [`DATA_WIDTH - 1:0] Result
);
endmodule

module user4(
	input [`DATA_WIDTH - 1:0] A,
	input [`DATA_WIDTH - 1:0] B,
	input [2:0] ALUop,
	output Overflow,
	output CarryOut,
	output Zero,
	output [`DATA_WIDTH - 1:0] Result
);
endmodule
