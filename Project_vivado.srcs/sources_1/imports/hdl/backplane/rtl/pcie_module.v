`timescale 1ns / 1ps
// Author: Andrzej Wojenski
// 
// Module:  pcie_module
// Version: 1.0
//

module pcie_module # (

		parameter AFC_PCI_INSTANTIATED  = 1,
		parameter AFC_DDR_DQ_WIDTH      = 32,
	    parameter AFC_DDR_PAYLOAD_WIDTH = 256,
		parameter AFC_DDR_DQS_WIDTH     = 4,
		parameter AFC_DDR_DM_WIDTH      = 4,
		parameter AFC_DDR_ROW_WIDTH     = 16,
		parameter AFC_DDR_BANK_WIDTH    = 3,
		parameter AFC_DDR_CK_WIDTH      = 1,
		parameter AFC_DDR_CKE_WIDTH     = 1,
		parameter AFC_DDR_ODT_WIDTH     = 1,
		
		parameter pcieLanes = 4		

) (	
	    
		 inout [AFC_DDR_DQ_WIDTH-1:0]ddr3_dq,
		 inout [AFC_DDR_DQS_WIDTH-1:0]ddr3_dqs_p,
		 inout [AFC_DDR_DQS_WIDTH-1:0]ddr3_dqs_n,
		 output [AFC_DDR_ROW_WIDTH-1:0]ddr3_addr,
		 output [AFC_DDR_BANK_WIDTH-1:0]ddr3_ba,
		 output ddr3_ras_n,
		 output ddr3_cas_n,
		 output ddr3_we_n,
		 output ddr3_reset_n,
		 output [AFC_DDR_CK_WIDTH-1:0]ddr3_ck_p,
		 output [AFC_DDR_CK_WIDTH-1:0]ddr3_ck_n,
		 output [AFC_DDR_CKE_WIDTH-1:0]ddr3_cke,
		 output [0:0]ddr3_cs_n,
		 output [AFC_DDR_DM_WIDTH-1:0]ddr3_dm,
		 output [AFC_DDR_ODT_WIDTH-1:0]ddr3_odt,
		
		 		 
		 //-- PCIe transceivers
		 input [pcieLanes - 1 : 0]pci_exp_rxp,
		 input [pcieLanes - 1 : 0]pci_exp_rxn,
		 output [pcieLanes - 1 : 0]pci_exp_txp,
		 output [pcieLanes - 1 : 0]pci_exp_txn,
		 //-- Necessity signals
		 // ddr clock signals not used
		 //input ddr_sys_clk_p, //--200 MHz DDR core clock (connect through BUFG or PLL)
		 //input ddr_sys_clk_n, //--200 MHz DDR core clock (connect through BUFG or PLL)
		 input sys_clk_p,     //--100 MHz PCIe Clock (connect directly to input pin)
		 input sys_clk_n,     // --100 MHz PCIe Clock
		 input sys_rst_n      // --Reset to PCIe and DDR cores 		
					
    );

localparam WB_MODULES = 2;

// Wishbone address space for local modules
localparam BACKPLANE_WB_CSR = 0;

localparam MEMC_WR_MASK_CONST = 32'h00000000;

wire [2:0]memc_cmd_instr;
wire [31:0]memc_cmd_addr;
wire [AFC_DDR_PAYLOAD_WIDTH-1:0]memc_wr_data;
wire [AFC_DDR_PAYLOAD_WIDTH-1:0]memc_rd_data;

// Signals declarations for testbench
//-- DDR memory controller interface --    
wire ddr_sys_reset_signal;	 
wire sys_reset_c_signal;
wire memc_cmd_rdy;
wire memc_cmd_en;
wire memc_wr_en;
wire memc_wr_end; 
wire memc_wr_rdy;
wire memc_rd_valid;
//-- memory arbiter interface
wire memarb_acc_req;

wire logic_clk_125mhz;

// Wishbone signals (master)
wire [31:0] wb_addr_i;
wire [31:0] wb_data_i, wb_data_o_;
wire [3:0]wb_sel_i;

wire wb_clk;
wire wb_rst;
wire wb_we_i;
wire wb_cyc_i;
wire wb_ack_;
wire wb_err_;
wire wb_stb_;

// PCIe
wire [28:0] pcie_wb_addr_i;
wire [31:0] pcie_wb_data_i, pcie_wb_data_o_;
wire [3:0]pcie_wb_sel_i;

wire pcie_wb_clk;
wire pcie_wb_rst;
wire pcie_wb_we_i;
wire pcie_wb_cyc_i;
wire pcie_wb_ack_;
wire pcie_wb_err_;
wire pcie_wb_stb_;

// bus logic signals
wire [WB_MODULES-1:0]wb_acmp;
wire [WB_MODULES-1:0]wb_stb_i;
wire [WB_MODULES-1:0]wb_err_o;
wire [WB_MODULES-1:0]wb_ack_o;
wire [31:0]wb_data_o[WB_MODULES-1:0];
wire [31:0]wb_data_o_valid[WB_MODULES-1:0];

genvar i;

// Generate Wishbone bus
generate 
	for (i = 0; i < WB_MODULES; i = i + 1) begin: WB_BUS
		assign wb_stb_i[i] = wb_cyc_i && wb_stb_ && wb_acmp[i];
	end
endgenerate

				  
assign wb_ack_ = |wb_ack_o; // reduction operator
assign wb_err_ = |wb_err_o;

wire memc_ui_clk;
wire pll_locked;
wire ddr_calib_done;


wb_csr wb_csr_i (  
    .rst_n_i(!wb_rst), 
    .clk_sys_i(wb_clk), 
    .wb_adr_i(wb_addr_i[31:0]), 
    .wb_dat_i(wb_data_i), 
    .wb_dat_o(wb_data_o_valid[0][31:0]), 
    .wb_cyc_i(wb_cyc_i), 
    .wb_sel_i(wb_sel_i[3:0]), 
    .wb_stb_i(wb_stb_i[0]), 
    .wb_we_i(wb_we_i), 
    .wb_ack_o(wb_ack_o[0]), 
    .wb_stall_o(), 
     
     .wb_test_reg_id_val_i(32'h11223344),
     
     .wb_test_reg_io_io_o()
     
 );

// ------------------------------------------------
//           Clocks assignments
// ------------------------------------------------
// DDR memory management
assign ddr_clk_signal = memc_ui_clk; // 100 MHz clock
assign ddr_sys_reset_signal = pll_locked; 

addr_decode_156cmp addr_decode_gen_i (
	.addr_in(wb_addr_i[31:16]),
	.data_out(wb_data_o_),	
	.acmp(wb_acmp),	
	
	.data_out1(wb_data_o[0][31:0])

);
 
// version for tests, slower ADC clock (working version)
//wb_clk_in_50mhz wb_clk_i
clock_unit clock_unit_i
 (// Clock in ports
  .clk_in1(usr_clk),  // input 125 Mhz PCIe
  
  // Clock out ports
  .clk_out1(wb_clk),  // 50MHz Wishbone clk
  .clk_out2(),// 200MHz ref_clk
  .clk_out3(logic_clk_125mhz), // logic clock, 125MHz
  .clk_out4(ddr_sys_clk_signal), // 200MHz, DDR clock
  // Status and control signals
  .reset(1'b0),
  .locked(pll_locked)
 );

assign wb_rst = !pll_locked; 	

// ------------------------------------------------------------------
//          PCIe, DDR3 and Wishbone management module
// ------------------------------------------------------------------


//assign wb_rst = pcie_wb_rst;
//assign wb_rst = 1'b0;
assign pcie_wb_ack_ = wb_ack_;
assign pcie_wb_data_o_[31:0] = wb_data_o_[31:0];
assign wb_addr_i[31:0] = pcie_wb_addr_i[28:0];
assign wb_data_i[31:0] = pcie_wb_data_i[31:0];
assign wb_we_i = pcie_wb_we_i;
assign wb_stb_ = pcie_wb_stb_;
//assign wb_sel_i = {4{pcie_wb_sel_i}};
assign wb_sel_i[3:0] = 4'hF;
assign wb_cyc_i = pcie_wb_cyc_i;

bpm_pcie_a7 #(
	 //.INSTANTIATED(AFC_PCI_INSTANTIATED),
	 .DDR_DQ_WIDTH(AFC_DDR_DQ_WIDTH),
    .DDR_PAYLOAD_WIDTH(AFC_DDR_PAYLOAD_WIDTH),
    .DDR_DQS_WIDTH(AFC_DDR_DQS_WIDTH),
    .DDR_DM_WIDTH(AFC_DDR_DM_WIDTH),
    .DDR_ROW_WIDTH(AFC_DDR_ROW_WIDTH),
    .DDR_BANK_WIDTH(AFC_DDR_BANK_WIDTH),
    .DDR_CK_WIDTH(AFC_DDR_CK_WIDTH),
    .DDR_CKE_WIDTH(AFC_DDR_CKE_WIDTH),
    .DDR_ODT_WIDTH(AFC_DDR_ODT_WIDTH)	 
	 ) bpm_pcie_a7_i (
	 
    //--DDR3 memory pins
    .ddr3_dq(ddr3_dq[AFC_DDR_DQ_WIDTH-1:0]),
    .ddr3_dqs_p(ddr3_dqs_p[AFC_DDR_DQS_WIDTH-1:0]),
    .ddr3_dqs_n(ddr3_dqs_n[AFC_DDR_DQS_WIDTH-1:0]),
    .ddr3_addr(ddr3_addr[AFC_DDR_ROW_WIDTH-1:0]),
    .ddr3_ba(ddr3_ba[AFC_DDR_BANK_WIDTH-1:0]),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p[AFC_DDR_CK_WIDTH-1:0]),
    .ddr3_ck_n(ddr3_ck_n[AFC_DDR_CK_WIDTH-1:0]),
    .ddr3_cke(ddr3_cke[AFC_DDR_CKE_WIDTH-1:0]),
	 .ddr3_cs_n(ddr3_cs_n),
    .ddr3_dm(ddr3_dm[AFC_DDR_DM_WIDTH-1:0]),
    .ddr3_odt(ddr3_odt[AFC_DDR_ODT_WIDTH-1:0]),
    //-- PCIe transceivers
    .pci_exp_rxp(pci_exp_rxp[pcieLanes - 1 : 0]),
    .pci_exp_rxn(pci_exp_rxn[pcieLanes - 1 : 0]),
    .pci_exp_txp(pci_exp_txp[pcieLanes - 1 : 0]),
    .pci_exp_txn(pci_exp_txn[pcieLanes - 1 : 0]),
    //-- Necessity signals
	 .ddr_sys_clk_p(ddr_sys_clk_signal),
	 .ddr_sys_clk_n(1'b0),
   
    .sys_clk_p(sys_clk_p),
    .sys_clk_n(sys_clk_n),
    .sys_rst_n(sys_rst_n),

    //-- DDR memory controller interface --    
	 .ddr_core_rst(ddr_sys_reset_signal), // input	 
    .memc_ui_clk(memc_ui_clk), // this is ddr_clock	 
	 .memc_ui_rst(), // output, this signal is to reset user logic
    .memc_cmd_rdy(memc_cmd_rdy),
    .memc_cmd_en(memc_cmd_en),
    .memc_cmd_instr(memc_cmd_instr[2:0]),
    .memc_cmd_addr(memc_cmd_addr[31:0]),
    .memc_wr_en(memc_wr_en),
    .memc_wr_end(memc_wr_end),
    .memc_wr_mask(MEMC_WR_MASK_CONST),
    .memc_wr_data(memc_wr_data[AFC_DDR_PAYLOAD_WIDTH-1:0]),
    .memc_wr_rdy(memc_wr_rdy),
    .memc_rd_data(memc_rd_data[AFC_DDR_PAYLOAD_WIDTH-1:0]),
    .memc_rd_valid(memc_rd_valid),
    //-- memory arbiter interface
    .memarb_acc_req(memarb_acc_req),
    .memarb_acc_gnt(memarb_acc_gnt),
    //-- / DDR memory controller interface

    //-- Wishbone interface -- 
    .CLK_I(wb_clk),
	 //.RST_I(wbone_rst),	 
	 .RST_I(1'b0),
    .ACK_I(pcie_wb_ack_),
    .DAT_I(pcie_wb_data_o_[31:0]),
    .ADDR_O(pcie_wb_addr_i[28:0]),
    .DAT_O(pcie_wb_data_i[31:0]),
    .WE_O(pcie_wb_we_i),
    .STB_O(pcie_wb_stb_),
	 .SEL_O(pcie_wb_sel_i),
    .CYC_O(pcie_wb_cyc_i),
    //--/ Wishbone interface
	 //-- Additional exported signals for instantiation
	 .ext_rst_o(pcie_wb_rst),
	 .user_logic_clk(usr_clk),
	 .ddr_calib_done_o(ddr_calib_done)
    );


endmodule
