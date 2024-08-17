//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Aug 17 04:39:26 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module channel_0_imp_3EIWA1
   (AXIS_RX_tdata,
    AXIS_RX_tkeep,
    AXIS_RX_tlast,
    AXIS_RX_tready,
    AXIS_RX_tuser,
    AXIS_RX_tvalid,
    AXIS_TX_tdata,
    AXIS_TX_tkeep,
    AXIS_TX_tlast,
    AXIS_TX_tready,
    AXIS_TX_tvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    busy,
    clk,
    eth_clk,
    eth_resetn,
    resetn);
  input [511:0]AXIS_RX_tdata;
  input [63:0]AXIS_RX_tkeep;
  input AXIS_RX_tlast;
  output AXIS_RX_tready;
  input AXIS_RX_tuser;
  input AXIS_RX_tvalid;
  output [511:0]AXIS_TX_tdata;
  output [63:0]AXIS_TX_tkeep;
  output AXIS_TX_tlast;
  input AXIS_TX_tready;
  output AXIS_TX_tvalid;
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output busy;
  input clk;
  input eth_clk;
  input eth_resetn;
  input resetn;

  wire [511:0]axis_data_cdc_M_AXIS_TDATA;
  wire [63:0]axis_data_cdc_M_AXIS_TKEEP;
  wire axis_data_cdc_M_AXIS_TLAST;
  wire axis_data_cdc_M_AXIS_TREADY;
  wire axis_data_cdc_M_AXIS_TVALID;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]eth0_axis_rx_TDATA;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]eth0_axis_rx_TKEEP;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire eth0_axis_rx_TLAST;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire eth0_axis_rx_TREADY;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire eth0_axis_rx_TUSER;
  (* CONN_BUS_INFO = "eth0_axis_rx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire eth0_axis_rx_TVALID;
  (* CONN_BUS_INFO = "eth0_axis_tx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]eth0_axis_tx_TDATA;
  (* CONN_BUS_INFO = "eth0_axis_tx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]eth0_axis_tx_TKEEP;
  (* CONN_BUS_INFO = "eth0_axis_tx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire eth0_axis_tx_TLAST;
  (* CONN_BUS_INFO = "eth0_axis_tx xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire eth0_axis_tx_TREADY;
  (* CONN_BUS_INFO = "eth0_axis_tx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire eth0_axis_tx_TVALID;
  wire eth0_stream_clk;
  wire eth0_stream_resetn;
  wire [15:0]packet_config_idle_cycles;
  wire [15:0]packet_config_initial_value;
  wire [31:0]packet_config_packet_count;
  wire [15:0]packet_config_packet_len;
  wire packet_config_start;
  wire [511:0]packet_gen_axis_out_TDATA;
  wire [63:0]packet_gen_axis_out_TKEEP;
  wire packet_gen_axis_out_TLAST;
  wire packet_gen_axis_out_TREADY;
  wire packet_gen_axis_out_TVALID;
  wire packet_gen_busy;
  wire pcie_bridge_axi_aclk;
  wire pcie_bridge_axi_aresetn;
  wire [0:0]system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire system_interconnect_M01_AXI_ARVALID;
  wire [0:0]system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire system_interconnect_M01_AXI_AWVALID;
  wire system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire [0:0]system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire [0:0]system_interconnect_M01_AXI_WSTRB;
  wire system_interconnect_M01_AXI_WVALID;

  assign AXIS_RX_tready = eth0_axis_rx_TREADY;
  assign AXIS_TX_tdata[511:0] = eth0_axis_tx_TDATA;
  assign AXIS_TX_tkeep[63:0] = eth0_axis_tx_TKEEP;
  assign AXIS_TX_tlast = eth0_axis_tx_TLAST;
  assign AXIS_TX_tvalid = eth0_axis_tx_TVALID;
  assign S_AXI_arready = system_interconnect_M01_AXI_ARREADY;
  assign S_AXI_awready = system_interconnect_M01_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = system_interconnect_M01_AXI_BRESP;
  assign S_AXI_bvalid = system_interconnect_M01_AXI_BVALID;
  assign S_AXI_rdata[31:0] = system_interconnect_M01_AXI_RDATA;
  assign S_AXI_rresp[1:0] = system_interconnect_M01_AXI_RRESP;
  assign S_AXI_rvalid = system_interconnect_M01_AXI_RVALID;
  assign S_AXI_wready = system_interconnect_M01_AXI_WREADY;
  assign busy = packet_gen_busy;
  assign eth0_axis_rx_TDATA = AXIS_RX_tdata[511:0];
  assign eth0_axis_rx_TKEEP = AXIS_RX_tkeep[63:0];
  assign eth0_axis_rx_TLAST = AXIS_RX_tlast;
  assign eth0_axis_rx_TUSER = AXIS_RX_tuser;
  assign eth0_axis_rx_TVALID = AXIS_RX_tvalid;
  assign eth0_axis_tx_TREADY = AXIS_TX_tready;
  assign eth0_stream_clk = eth_clk;
  assign eth0_stream_resetn = eth_resetn;
  assign pcie_bridge_axi_aclk = clk;
  assign pcie_bridge_axi_aresetn = resetn;
  assign system_interconnect_M01_AXI_ARADDR = S_AXI_araddr[0];
  assign system_interconnect_M01_AXI_ARPROT = S_AXI_arprot[2:0];
  assign system_interconnect_M01_AXI_ARVALID = S_AXI_arvalid;
  assign system_interconnect_M01_AXI_AWADDR = S_AXI_awaddr[0];
  assign system_interconnect_M01_AXI_AWPROT = S_AXI_awprot[2:0];
  assign system_interconnect_M01_AXI_AWVALID = S_AXI_awvalid;
  assign system_interconnect_M01_AXI_BREADY = S_AXI_bready;
  assign system_interconnect_M01_AXI_RREADY = S_AXI_rready;
  assign system_interconnect_M01_AXI_WDATA = S_AXI_wdata[0];
  assign system_interconnect_M01_AXI_WSTRB = S_AXI_wstrb[0];
  assign system_interconnect_M01_AXI_WVALID = S_AXI_wvalid;
  top_level_axis_data_fifo_0_0 axis_data_cdc
       (.m_axis_aclk(eth0_stream_clk),
        .m_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .m_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_cdc_M_AXIS_TVALID),
        .s_axis_aclk(pcie_bridge_axi_aclk),
        .s_axis_aresetn(pcie_bridge_axi_aresetn),
        .s_axis_tdata(packet_gen_axis_out_TDATA),
        .s_axis_tkeep(packet_gen_axis_out_TKEEP),
        .s_axis_tlast(packet_gen_axis_out_TLAST),
        .s_axis_tready(packet_gen_axis_out_TREADY),
        .s_axis_tvalid(packet_gen_axis_out_TVALID));
  top_level_data_consumer_0_0 data_consumer
       (.AXIS_RX_TDATA(eth0_axis_rx_TDATA),
        .AXIS_RX_TKEEP(eth0_axis_rx_TKEEP),
        .AXIS_RX_TLAST(eth0_axis_rx_TLAST),
        .AXIS_RX_TREADY(eth0_axis_rx_TREADY),
        .AXIS_RX_TVALID(eth0_axis_rx_TVALID),
        .clk(eth0_stream_clk),
        .resetn(eth0_stream_resetn));
  top_level_packet_config_0_0 packet_config
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .clk(pcie_bridge_axi_aclk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_gen_busy(packet_gen_busy),
        .packet_len(packet_config_packet_len),
        .resetn(pcie_bridge_axi_aresetn),
        .start(packet_config_start));
  top_level_packet_gen_0_0 packet_gen
       (.axis_out_tdata(packet_gen_axis_out_TDATA),
        .axis_out_tkeep(packet_gen_axis_out_TKEEP),
        .axis_out_tlast(packet_gen_axis_out_TLAST),
        .axis_out_tready(packet_gen_axis_out_TREADY),
        .axis_out_tvalid(packet_gen_axis_out_TVALID),
        .busy(packet_gen_busy),
        .clk(pcie_bridge_axi_aclk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_length(packet_config_packet_len),
        .resetn(pcie_bridge_axi_aresetn),
        .start(packet_config_start));
  top_level_axis_data_fifo_0_1 packetizing_fifo
       (.m_axis_tdata(eth0_axis_tx_TDATA),
        .m_axis_tkeep(eth0_axis_tx_TKEEP),
        .m_axis_tlast(eth0_axis_tx_TLAST),
        .m_axis_tready(eth0_axis_tx_TREADY),
        .m_axis_tvalid(eth0_axis_tx_TVALID),
        .s_axis_aclk(eth0_stream_clk),
        .s_axis_aresetn(eth0_stream_resetn),
        .s_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .s_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_cdc_M_AXIS_TVALID));
  top_level_system_ila_0_0 system_ila
       (.SLOT_0_AXIS_tdata(eth0_axis_tx_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(eth0_axis_tx_TKEEP[0]),
        .SLOT_0_AXIS_tlast(eth0_axis_tx_TLAST),
        .SLOT_0_AXIS_tready(eth0_axis_tx_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(1'b0),
        .SLOT_0_AXIS_tvalid(eth0_axis_tx_TVALID),
        .SLOT_1_AXIS_tdata(eth0_axis_rx_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(eth0_axis_rx_TKEEP[0]),
        .SLOT_1_AXIS_tlast(eth0_axis_rx_TLAST),
        .SLOT_1_AXIS_tready(eth0_axis_rx_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(eth0_axis_rx_TUSER),
        .SLOT_1_AXIS_tvalid(eth0_axis_rx_TVALID),
        .clk(eth0_stream_clk),
        .resetn(1'b0));
endmodule

module channel_1_imp_1R4OFYV
   (AXIS_RX_tdata,
    AXIS_RX_tkeep,
    AXIS_RX_tlast,
    AXIS_RX_tready,
    AXIS_RX_tuser,
    AXIS_RX_tvalid,
    AXIS_TX_tdata,
    AXIS_TX_tkeep,
    AXIS_TX_tlast,
    AXIS_TX_tready,
    AXIS_TX_tvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    busy,
    clk,
    eth_clk,
    eth_resetn,
    resetn);
  input [511:0]AXIS_RX_tdata;
  input [63:0]AXIS_RX_tkeep;
  input AXIS_RX_tlast;
  output AXIS_RX_tready;
  input AXIS_RX_tuser;
  input AXIS_RX_tvalid;
  output [511:0]AXIS_TX_tdata;
  output [63:0]AXIS_TX_tkeep;
  output AXIS_TX_tlast;
  input AXIS_TX_tready;
  output AXIS_TX_tvalid;
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output busy;
  input clk;
  input eth_clk;
  input eth_resetn;
  input resetn;

  wire [511:0]axis_data_cdc_M_AXIS_TDATA;
  wire [63:0]axis_data_cdc_M_AXIS_TKEEP;
  wire axis_data_cdc_M_AXIS_TLAST;
  wire axis_data_cdc_M_AXIS_TREADY;
  wire axis_data_cdc_M_AXIS_TVALID;
  wire eth0_stream_clk;
  wire eth0_stream_resetn;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]eth1_axis_rx_TDATA;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]eth1_axis_rx_TKEEP;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire eth1_axis_rx_TLAST;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire eth1_axis_rx_TREADY;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire eth1_axis_rx_TUSER;
  (* CONN_BUS_INFO = "eth1_axis_rx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire eth1_axis_rx_TVALID;
  (* CONN_BUS_INFO = "eth1_axis_tx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]eth1_axis_tx_TDATA;
  (* CONN_BUS_INFO = "eth1_axis_tx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]eth1_axis_tx_TKEEP;
  (* CONN_BUS_INFO = "eth1_axis_tx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire eth1_axis_tx_TLAST;
  (* CONN_BUS_INFO = "eth1_axis_tx xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire eth1_axis_tx_TREADY;
  (* CONN_BUS_INFO = "eth1_axis_tx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire eth1_axis_tx_TVALID;
  wire [15:0]packet_config_idle_cycles;
  wire [15:0]packet_config_initial_value;
  wire [31:0]packet_config_packet_count;
  wire [15:0]packet_config_packet_len;
  wire packet_config_start;
  wire [511:0]packet_gen_axis_out_TDATA;
  wire [63:0]packet_gen_axis_out_TKEEP;
  wire packet_gen_axis_out_TLAST;
  wire packet_gen_axis_out_TREADY;
  wire packet_gen_axis_out_TVALID;
  wire packet_gen_busy;
  wire pcie_bridge_axi_aclk;
  wire resetn_1;
  wire [0:0]system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire system_interconnect_M01_AXI_ARVALID;
  wire [0:0]system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire system_interconnect_M01_AXI_AWVALID;
  wire system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire [0:0]system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire [0:0]system_interconnect_M01_AXI_WSTRB;
  wire system_interconnect_M01_AXI_WVALID;

  assign AXIS_RX_tready = eth1_axis_rx_TREADY;
  assign AXIS_TX_tdata[511:0] = eth1_axis_tx_TDATA;
  assign AXIS_TX_tkeep[63:0] = eth1_axis_tx_TKEEP;
  assign AXIS_TX_tlast = eth1_axis_tx_TLAST;
  assign AXIS_TX_tvalid = eth1_axis_tx_TVALID;
  assign S_AXI_arready = system_interconnect_M01_AXI_ARREADY;
  assign S_AXI_awready = system_interconnect_M01_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = system_interconnect_M01_AXI_BRESP;
  assign S_AXI_bvalid = system_interconnect_M01_AXI_BVALID;
  assign S_AXI_rdata[31:0] = system_interconnect_M01_AXI_RDATA;
  assign S_AXI_rresp[1:0] = system_interconnect_M01_AXI_RRESP;
  assign S_AXI_rvalid = system_interconnect_M01_AXI_RVALID;
  assign S_AXI_wready = system_interconnect_M01_AXI_WREADY;
  assign busy = packet_gen_busy;
  assign eth0_stream_clk = eth_clk;
  assign eth0_stream_resetn = eth_resetn;
  assign eth1_axis_rx_TDATA = AXIS_RX_tdata[511:0];
  assign eth1_axis_rx_TKEEP = AXIS_RX_tkeep[63:0];
  assign eth1_axis_rx_TLAST = AXIS_RX_tlast;
  assign eth1_axis_rx_TUSER = AXIS_RX_tuser;
  assign eth1_axis_rx_TVALID = AXIS_RX_tvalid;
  assign eth1_axis_tx_TREADY = AXIS_TX_tready;
  assign pcie_bridge_axi_aclk = clk;
  assign resetn_1 = resetn;
  assign system_interconnect_M01_AXI_ARADDR = S_AXI_araddr[0];
  assign system_interconnect_M01_AXI_ARPROT = S_AXI_arprot[2:0];
  assign system_interconnect_M01_AXI_ARVALID = S_AXI_arvalid;
  assign system_interconnect_M01_AXI_AWADDR = S_AXI_awaddr[0];
  assign system_interconnect_M01_AXI_AWPROT = S_AXI_awprot[2:0];
  assign system_interconnect_M01_AXI_AWVALID = S_AXI_awvalid;
  assign system_interconnect_M01_AXI_BREADY = S_AXI_bready;
  assign system_interconnect_M01_AXI_RREADY = S_AXI_rready;
  assign system_interconnect_M01_AXI_WDATA = S_AXI_wdata[0];
  assign system_interconnect_M01_AXI_WSTRB = S_AXI_wstrb[0];
  assign system_interconnect_M01_AXI_WVALID = S_AXI_wvalid;
  top_level_axis_data_cdc_0 axis_data_cdc
       (.m_axis_aclk(eth0_stream_clk),
        .m_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .m_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_cdc_M_AXIS_TVALID),
        .s_axis_aclk(pcie_bridge_axi_aclk),
        .s_axis_aresetn(resetn_1),
        .s_axis_tdata(packet_gen_axis_out_TDATA),
        .s_axis_tkeep(packet_gen_axis_out_TKEEP),
        .s_axis_tlast(packet_gen_axis_out_TLAST),
        .s_axis_tready(packet_gen_axis_out_TREADY),
        .s_axis_tvalid(packet_gen_axis_out_TVALID));
  top_level_data_consumer_1 data_consumer
       (.AXIS_RX_TDATA(eth1_axis_rx_TDATA),
        .AXIS_RX_TKEEP(eth1_axis_rx_TKEEP),
        .AXIS_RX_TLAST(eth1_axis_rx_TLAST),
        .AXIS_RX_TREADY(eth1_axis_rx_TREADY),
        .AXIS_RX_TVALID(eth1_axis_rx_TVALID),
        .clk(eth0_stream_clk),
        .resetn(eth0_stream_resetn));
  top_level_packet_config_1 packet_config
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .clk(pcie_bridge_axi_aclk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_gen_busy(packet_gen_busy),
        .packet_len(packet_config_packet_len),
        .resetn(resetn_1),
        .start(packet_config_start));
  top_level_packet_gen_1 packet_gen
       (.axis_out_tdata(packet_gen_axis_out_TDATA),
        .axis_out_tkeep(packet_gen_axis_out_TKEEP),
        .axis_out_tlast(packet_gen_axis_out_TLAST),
        .axis_out_tready(packet_gen_axis_out_TREADY),
        .axis_out_tvalid(packet_gen_axis_out_TVALID),
        .busy(packet_gen_busy),
        .clk(pcie_bridge_axi_aclk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_length(packet_config_packet_len),
        .resetn(resetn_1),
        .start(packet_config_start));
  top_level_packetizing_fifo_0 packetizing_fifo
       (.m_axis_tdata(eth1_axis_tx_TDATA),
        .m_axis_tkeep(eth1_axis_tx_TKEEP),
        .m_axis_tlast(eth1_axis_tx_TLAST),
        .m_axis_tready(eth1_axis_tx_TREADY),
        .m_axis_tvalid(eth1_axis_tx_TVALID),
        .s_axis_aclk(eth0_stream_clk),
        .s_axis_aresetn(eth0_stream_resetn),
        .s_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .s_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_cdc_M_AXIS_TVALID));
  top_level_system_ila_1 system_ila
       (.SLOT_0_AXIS_tdata(eth1_axis_tx_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(eth1_axis_tx_TKEEP[0]),
        .SLOT_0_AXIS_tlast(eth1_axis_tx_TLAST),
        .SLOT_0_AXIS_tready(eth1_axis_tx_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(1'b0),
        .SLOT_0_AXIS_tvalid(eth1_axis_tx_TVALID),
        .SLOT_1_AXIS_tdata(eth1_axis_rx_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(eth1_axis_rx_TKEEP[0]),
        .SLOT_1_AXIS_tlast(eth1_axis_rx_TLAST),
        .SLOT_1_AXIS_tready(eth1_axis_rx_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(eth1_axis_rx_TUSER),
        .SLOT_1_AXIS_tvalid(eth1_axis_rx_TVALID),
        .clk(eth0_stream_clk),
        .resetn(1'b0));
endmodule

module eth0_imp_61EMJN
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    eth_clk,
    eth_resetn,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    sys_resetn_in);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output eth_clk;
  output eth_resetn;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input sys_resetn_in;

  wire [3:0]Conn1_GRX_N;
  wire [3:0]Conn1_GRX_P;
  wire [3:0]Conn1_GTX_N;
  wire [3:0]Conn1_GTX_P;
  wire Conn2_CLK_N;
  wire Conn2_CLK_P;
  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire [511:0]cmac_axis_rx_TDATA;
  wire [63:0]cmac_axis_rx_TKEEP;
  wire cmac_axis_rx_TLAST;
  wire cmac_axis_rx_TUSER;
  wire cmac_axis_rx_TVALID;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_gt_trans_debug_gt_txprecursor;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_rx_resetn_out;
  wire cmac_control_sync_rx_aligned;
  wire cmac_control_sys_reset_out;
  wire cmac_gt_txusrclk2;
  wire cmac_stat_rx_stat_rx_aligned;
  wire init_clk_0_1;
  wire sys_resetn_in_1;

  assign Conn1_GRX_N = qsfp_gt_grx_n[3:0];
  assign Conn1_GRX_P = qsfp_gt_grx_p[3:0];
  assign Conn2_CLK_N = qsfp_clk_clk_n;
  assign Conn2_CLK_P = qsfp_clk_clk_p;
  assign aligned = cmac_control_sync_rx_aligned;
  assign axis_rx_tdata[511:0] = cmac_axis_rx_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_axis_rx_TKEEP;
  assign axis_rx_tlast = cmac_axis_rx_TLAST;
  assign axis_rx_tuser = cmac_axis_rx_TUSER;
  assign axis_rx_tvalid = cmac_axis_rx_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign eth_clk = cmac_gt_txusrclk2;
  assign eth_resetn = cmac_control_rx_resetn_out;
  assign init_clk_0_1 = init_clk;
  assign qsfp_gt_gtx_n[3:0] = Conn1_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = Conn1_GTX_P;
  assign sys_resetn_in_1 = sys_resetn_in;
  top_level_cmac_usplus_0_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk_0_1),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(Conn2_CLK_N),
        .gt_ref_clk_p(Conn2_CLK_P),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(Conn1_GRX_N),
        .gt_rxp_in(Conn1_GRX_P),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(Conn1_GTX_N),
        .gt_txp_out(Conn1_GTX_P),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_0_1),
        .rx_axis_tdata(cmac_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_axis_rx_TLAST),
        .rx_axis_tuser(cmac_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_axis_rx_TVALID),
        .rx_clk(cmac_gt_txusrclk2),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_sys_reset_out),
        .tx_axis_tdata(axis_tx_1_TDATA),
        .tx_axis_tkeep(axis_tx_1_TKEEP),
        .tx_axis_tlast(axis_tx_1_TLAST),
        .tx_axis_tready(axis_tx_1_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_tx_1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_0_0 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_gt_txusrclk2),
        .rx_resetn_out(cmac_control_rx_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(cmac_control_sync_rx_aligned),
        .sys_reset_out(cmac_control_sys_reset_out),
        .sys_resetn_in(sys_resetn_in_1));
endmodule

module eth1_imp_1XD8NFH
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    eth_clk,
    eth_resetn,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    sys_resetn_in);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  output eth_clk;
  output eth_resetn;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input sys_resetn_in;

  wire [3:0]Conn1_GRX_N;
  wire [3:0]Conn1_GRX_P;
  wire [3:0]Conn1_GTX_N;
  wire [3:0]Conn1_GTX_P;
  wire Conn2_CLK_N;
  wire Conn2_CLK_P;
  wire [511:0]axis_tx_1_TDATA;
  wire [63:0]axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire [511:0]cmac_axis_rx_TDATA;
  wire [63:0]cmac_axis_rx_TKEEP;
  wire cmac_axis_rx_TLAST;
  wire cmac_axis_rx_TUSER;
  wire cmac_axis_rx_TVALID;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_gt_trans_debug_gt_txprecursor;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_rx_resetn_out;
  wire cmac_control_sync_rx_aligned;
  wire cmac_control_sys_reset_out;
  wire cmac_gt_txusrclk2;
  wire cmac_stat_rx_stat_rx_aligned;
  wire init_clk_0_1;
  wire sys_resetn_in_1;

  assign Conn1_GRX_N = qsfp_gt_grx_n[3:0];
  assign Conn1_GRX_P = qsfp_gt_grx_p[3:0];
  assign Conn2_CLK_N = qsfp_clk_clk_n;
  assign Conn2_CLK_P = qsfp_clk_clk_p;
  assign aligned = cmac_control_sync_rx_aligned;
  assign axis_rx_tdata[511:0] = cmac_axis_rx_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_axis_rx_TKEEP;
  assign axis_rx_tlast = cmac_axis_rx_TLAST;
  assign axis_rx_tuser = cmac_axis_rx_TUSER;
  assign axis_rx_tvalid = cmac_axis_rx_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata[511:0];
  assign axis_tx_1_TKEEP = axis_tx_tkeep[63:0];
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign eth_clk = cmac_gt_txusrclk2;
  assign eth_resetn = cmac_control_rx_resetn_out;
  assign init_clk_0_1 = init_clk;
  assign qsfp_gt_gtx_n[3:0] = Conn1_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = Conn1_GTX_P;
  assign sys_resetn_in_1 = sys_resetn_in;
  top_level_cmac_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk_0_1),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(Conn2_CLK_N),
        .gt_ref_clk_p(Conn2_CLK_P),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(Conn1_GRX_N),
        .gt_rxp_in(Conn1_GRX_P),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(Conn1_GTX_N),
        .gt_txp_out(Conn1_GTX_P),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(cmac_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_0_1),
        .rx_axis_tdata(cmac_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_axis_rx_TLAST),
        .rx_axis_tuser(cmac_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_axis_rx_TVALID),
        .rx_clk(cmac_gt_txusrclk2),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_sys_reset_out),
        .tx_axis_tdata(axis_tx_1_TDATA),
        .tx_axis_tkeep(axis_tx_1_TKEEP),
        .tx_axis_tlast(axis_tx_1_TLAST),
        .tx_axis_tready(axis_tx_1_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_tx_1_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_1 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_gt_trans_debug_gt_txdiffctrl),
        .gt_txprecursor(cmac_control_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_gt_txusrclk2),
        .rx_resetn_out(cmac_control_rx_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(cmac_control_sync_rx_aligned),
        .sys_reset_out(cmac_control_sys_reset_out),
        .sys_resetn_in(sys_resetn_in_1));
endmodule

module pcie_axi_bridge_imp_5SKLKX
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [0:0]Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [0:0]Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire [0:0]Conn1_BVALID;
  wire Conn1_RDATA;
  wire Conn1_RID;
  wire [0:0]Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire [0:0]Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire [0:0]Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]axi4_master_plug_AXI_ARADDR;
  wire axi4_master_plug_AXI_ARREADY;
  wire axi4_master_plug_AXI_ARVALID;
  wire [31:0]axi4_master_plug_AXI_AWADDR;
  wire axi4_master_plug_AXI_AWREADY;
  wire axi4_master_plug_AXI_AWVALID;
  wire axi4_master_plug_AXI_BREADY;
  wire [1:0]axi4_master_plug_AXI_BRESP;
  wire axi4_master_plug_AXI_BVALID;
  wire [31:0]axi4_master_plug_AXI_RDATA;
  wire axi4_master_plug_AXI_RREADY;
  wire [1:0]axi4_master_plug_AXI_RRESP;
  wire axi4_master_plug_AXI_RVALID;
  wire [31:0]axi4_master_plug_AXI_WDATA;
  wire axi4_master_plug_AXI_WREADY;
  wire axi4_master_plug_AXI_WVALID;
  wire pcie_bridge_axi_aclk1;
  wire pcie_bridge_axi_aresetn;
  wire [15:0]pcie_bridge_pcie_mgt_rxn;
  wire [15:0]pcie_bridge_pcie_mgt_rxp;
  wire [15:0]pcie_bridge_pcie_mgt_txn;
  wire [15:0]pcie_bridge_pcie_mgt_txp;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]xlconstant_0_dout;

  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign Conn1_ARREADY = M_AXI_B_arready[0];
  assign Conn1_AWREADY = M_AXI_B_awready[0];
  assign Conn1_BID = M_AXI_B_bid;
  assign Conn1_BRESP = M_AXI_B_bresp[1:0];
  assign Conn1_BVALID = M_AXI_B_bvalid[0];
  assign Conn1_RDATA = M_AXI_B_rdata;
  assign Conn1_RID = M_AXI_B_rid;
  assign Conn1_RLAST = M_AXI_B_rlast[0];
  assign Conn1_RRESP = M_AXI_B_rresp[1:0];
  assign Conn1_RVALID = M_AXI_B_rvalid[0];
  assign Conn1_WREADY = M_AXI_B_wready[0];
  assign M_AXI_B_araddr = Conn1_ARADDR[0];
  assign M_AXI_B_arburst[1:0] = Conn1_ARBURST;
  assign M_AXI_B_arcache[3:0] = Conn1_ARCACHE;
  assign M_AXI_B_arid = Conn1_ARID[0];
  assign M_AXI_B_arlen = Conn1_ARLEN[0];
  assign M_AXI_B_arlock = Conn1_ARLOCK;
  assign M_AXI_B_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_B_arsize[2:0] = Conn1_ARSIZE;
  assign M_AXI_B_arvalid[0] = Conn1_ARVALID;
  assign M_AXI_B_awaddr = Conn1_AWADDR[0];
  assign M_AXI_B_awburst[1:0] = Conn1_AWBURST;
  assign M_AXI_B_awcache[3:0] = Conn1_AWCACHE;
  assign M_AXI_B_awid = Conn1_AWID[0];
  assign M_AXI_B_awlen = Conn1_AWLEN[0];
  assign M_AXI_B_awlock = Conn1_AWLOCK;
  assign M_AXI_B_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_B_awsize[2:0] = Conn1_AWSIZE;
  assign M_AXI_B_awvalid[0] = Conn1_AWVALID;
  assign M_AXI_B_bready[0] = Conn1_BREADY;
  assign M_AXI_B_rready[0] = Conn1_RREADY;
  assign M_AXI_B_wdata = Conn1_WDATA[0];
  assign M_AXI_B_wlast[0] = Conn1_WLAST;
  assign M_AXI_B_wstrb = Conn1_WSTRB[0];
  assign M_AXI_B_wvalid[0] = Conn1_WVALID;
  assign axi_aclk = pcie_bridge_axi_aclk1;
  assign axi_aresetn = pcie_bridge_axi_aresetn;
  assign pcie_bridge_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign pcie_bridge_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  assign pcie_mgt_txn[15:0] = pcie_bridge_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = pcie_bridge_pcie_mgt_txp;
  top_level_axi4_master_plug_0_0 axi4_master_plug
       (.AXI_ARADDR(axi4_master_plug_AXI_ARADDR),
        .AXI_ARREADY(axi4_master_plug_AXI_ARREADY),
        .AXI_ARVALID(axi4_master_plug_AXI_ARVALID),
        .AXI_AWADDR(axi4_master_plug_AXI_AWADDR),
        .AXI_AWREADY(axi4_master_plug_AXI_AWREADY),
        .AXI_AWVALID(axi4_master_plug_AXI_AWVALID),
        .AXI_BREADY(axi4_master_plug_AXI_BREADY),
        .AXI_BRESP(axi4_master_plug_AXI_BRESP),
        .AXI_BVALID(axi4_master_plug_AXI_BVALID),
        .AXI_RDATA(axi4_master_plug_AXI_RDATA),
        .AXI_RREADY(axi4_master_plug_AXI_RREADY),
        .AXI_RRESP(axi4_master_plug_AXI_RRESP),
        .AXI_RVALID(axi4_master_plug_AXI_RVALID),
        .AXI_WDATA(axi4_master_plug_AXI_WDATA),
        .AXI_WREADY(axi4_master_plug_AXI_WREADY),
        .AXI_WVALID(axi4_master_plug_AXI_WVALID),
        .clk(pcie_bridge_axi_aclk1));
  top_level_util_ds_buf_0_0 clock_buffer
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  top_level_xlconstant_0_0 one
       (.dout(xlconstant_0_dout));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(pcie_bridge_axi_aclk1),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(Conn1_ARADDR),
        .m_axib_arburst(Conn1_ARBURST),
        .m_axib_arcache(Conn1_ARCACHE),
        .m_axib_arid(Conn1_ARID),
        .m_axib_arlen(Conn1_ARLEN),
        .m_axib_arlock(Conn1_ARLOCK),
        .m_axib_arprot(Conn1_ARPROT),
        .m_axib_arready(Conn1_ARREADY),
        .m_axib_arsize(Conn1_ARSIZE),
        .m_axib_arvalid(Conn1_ARVALID),
        .m_axib_awaddr(Conn1_AWADDR),
        .m_axib_awburst(Conn1_AWBURST),
        .m_axib_awcache(Conn1_AWCACHE),
        .m_axib_awid(Conn1_AWID),
        .m_axib_awlen(Conn1_AWLEN),
        .m_axib_awlock(Conn1_AWLOCK),
        .m_axib_awprot(Conn1_AWPROT),
        .m_axib_awready(Conn1_AWREADY),
        .m_axib_awsize(Conn1_AWSIZE),
        .m_axib_awvalid(Conn1_AWVALID),
        .m_axib_bid({Conn1_BID,Conn1_BID,Conn1_BID,Conn1_BID}),
        .m_axib_bready(Conn1_BREADY),
        .m_axib_bresp(Conn1_BRESP),
        .m_axib_bvalid(Conn1_BVALID),
        .m_axib_rdata({Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA,Conn1_RDATA}),
        .m_axib_rid({Conn1_RID,Conn1_RID,Conn1_RID,Conn1_RID}),
        .m_axib_rlast(Conn1_RLAST),
        .m_axib_rready(Conn1_RREADY),
        .m_axib_rresp(Conn1_RRESP),
        .m_axib_rvalid(Conn1_RVALID),
        .m_axib_wdata(Conn1_WDATA),
        .m_axib_wlast(Conn1_WLAST),
        .m_axib_wready(Conn1_WREADY),
        .m_axib_wstrb(Conn1_WSTRB),
        .m_axib_wvalid(Conn1_WVALID),
        .pci_exp_rxn(pcie_bridge_pcie_mgt_rxn),
        .pci_exp_rxp(pcie_bridge_pcie_mgt_rxp),
        .pci_exp_txn(pcie_bridge_pcie_mgt_txn),
        .pci_exp_txp(pcie_bridge_pcie_mgt_txp),
        .s_axil_araddr(axi4_master_plug_AXI_ARADDR),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(axi4_master_plug_AXI_ARREADY),
        .s_axil_arvalid(axi4_master_plug_AXI_ARVALID),
        .s_axil_awaddr(axi4_master_plug_AXI_AWADDR),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(axi4_master_plug_AXI_AWREADY),
        .s_axil_awvalid(axi4_master_plug_AXI_AWVALID),
        .s_axil_bready(axi4_master_plug_AXI_BREADY),
        .s_axil_bresp(axi4_master_plug_AXI_BRESP),
        .s_axil_bvalid(axi4_master_plug_AXI_BVALID),
        .s_axil_rdata(axi4_master_plug_AXI_RDATA),
        .s_axil_rready(axi4_master_plug_AXI_RREADY),
        .s_axil_rresp(axi4_master_plug_AXI_RRESP),
        .s_axil_rvalid(axi4_master_plug_AXI_RVALID),
        .s_axil_wdata(axi4_master_plug_AXI_WDATA),
        .s_axil_wready(axi4_master_plug_AXI_WREADY),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(axi4_master_plug_AXI_WVALID),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(xlconstant_0_dout),
        .usr_irq_req(1'b0));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=28,numReposBlks=23,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (init_clk,
    led_green_l,
    led_orange_l,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.INIT_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.INIT_CLK, CLK_DOMAIN top_level_init_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input init_clk;
  output [3:0]led_green_l;
  output [3:0]led_orange_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;

  wire [511:0]AXIS_RX_1_TDATA;
  wire [63:0]AXIS_RX_1_TKEEP;
  wire AXIS_RX_1_TLAST;
  wire AXIS_RX_1_TUSER;
  wire AXIS_RX_1_TVALID;
  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [511:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [63:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire channel_0_busy;
  wire [511:0]channel_1_AXIS_TX_TDATA;
  wire [63:0]channel_1_AXIS_TX_TKEEP;
  wire channel_1_AXIS_TX_TLAST;
  wire channel_1_AXIS_TX_TREADY;
  wire channel_1_AXIS_TX_TVALID;
  wire channel_1_busy;
  wire eth0_aligned;
  wire [511:0]eth0_axis_rx_TDATA;
  wire [63:0]eth0_axis_rx_TKEEP;
  wire eth0_axis_rx_TLAST;
  wire eth0_axis_rx_TUSER;
  wire eth0_axis_rx_TVALID;
  wire [3:0]eth0_gt_serial_port_0_GRX_N;
  wire [3:0]eth0_gt_serial_port_0_GRX_P;
  wire [3:0]eth0_gt_serial_port_0_GTX_N;
  wire [3:0]eth0_gt_serial_port_0_GTX_P;
  wire eth0_stream_clk;
  wire eth0_stream_resetn;
  wire eth1_aligned;
  wire eth1_eth_clk;
  wire eth1_eth_resetn;
  wire [3:0]eth1_qsfp_gt_GRX_N;
  wire [3:0]eth1_qsfp_gt_GRX_P;
  wire [3:0]eth1_qsfp_gt_GTX_N;
  wire [3:0]eth1_qsfp_gt_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_0_1;
  wire pcie_axi_bridge_M_AXI_B_ARADDR;
  wire [1:0]pcie_axi_bridge_M_AXI_B_ARBURST;
  wire [3:0]pcie_axi_bridge_M_AXI_B_ARCACHE;
  wire pcie_axi_bridge_M_AXI_B_ARID;
  wire pcie_axi_bridge_M_AXI_B_ARLEN;
  wire pcie_axi_bridge_M_AXI_B_ARLOCK;
  wire [2:0]pcie_axi_bridge_M_AXI_B_ARPROT;
  wire [0:0]pcie_axi_bridge_M_AXI_B_ARREADY;
  wire [2:0]pcie_axi_bridge_M_AXI_B_ARSIZE;
  wire [0:0]pcie_axi_bridge_M_AXI_B_ARVALID;
  wire pcie_axi_bridge_M_AXI_B_AWADDR;
  wire [1:0]pcie_axi_bridge_M_AXI_B_AWBURST;
  wire [3:0]pcie_axi_bridge_M_AXI_B_AWCACHE;
  wire pcie_axi_bridge_M_AXI_B_AWID;
  wire pcie_axi_bridge_M_AXI_B_AWLEN;
  wire pcie_axi_bridge_M_AXI_B_AWLOCK;
  wire [2:0]pcie_axi_bridge_M_AXI_B_AWPROT;
  wire [0:0]pcie_axi_bridge_M_AXI_B_AWREADY;
  wire [2:0]pcie_axi_bridge_M_AXI_B_AWSIZE;
  wire [0:0]pcie_axi_bridge_M_AXI_B_AWVALID;
  wire pcie_axi_bridge_M_AXI_B_BID;
  wire [0:0]pcie_axi_bridge_M_AXI_B_BREADY;
  wire [1:0]pcie_axi_bridge_M_AXI_B_BRESP;
  wire [0:0]pcie_axi_bridge_M_AXI_B_BVALID;
  wire pcie_axi_bridge_M_AXI_B_RDATA;
  wire pcie_axi_bridge_M_AXI_B_RID;
  wire [0:0]pcie_axi_bridge_M_AXI_B_RLAST;
  wire [0:0]pcie_axi_bridge_M_AXI_B_RREADY;
  wire [1:0]pcie_axi_bridge_M_AXI_B_RRESP;
  wire [0:0]pcie_axi_bridge_M_AXI_B_RVALID;
  wire pcie_axi_bridge_M_AXI_B_WDATA;
  wire [0:0]pcie_axi_bridge_M_AXI_B_WLAST;
  wire [0:0]pcie_axi_bridge_M_AXI_B_WREADY;
  wire pcie_axi_bridge_M_AXI_B_WSTRB;
  wire [0:0]pcie_axi_bridge_M_AXI_B_WVALID;
  wire pcie_bridge_axi_aclk;
  wire pcie_bridge_axi_aresetn;
  wire [15:0]pcie_bridge_pcie_mgt_rxn;
  wire [15:0]pcie_bridge_pcie_mgt_rxp;
  wire [15:0]pcie_bridge_pcie_mgt_txn;
  wire [15:0]pcie_bridge_pcie_mgt_txp;
  wire qsfp_clk_0_1_CLK_N;
  wire qsfp_clk_0_1_CLK_P;
  wire [3:0]status_reporter_green_led_l;
  wire [3:0]status_reporter_orang_led_1;
  wire system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire [0:0]system_interconnect_M00_AXI_ARVALID;
  wire system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire [0:0]system_interconnect_M00_AXI_AWVALID;
  wire [0:0]system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire [0:0]system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire system_interconnect_M00_AXI_WSTRB;
  wire [0:0]system_interconnect_M00_AXI_WVALID;
  wire system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire [0:0]system_interconnect_M01_AXI_ARVALID;
  wire system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire [0:0]system_interconnect_M01_AXI_AWVALID;
  wire [0:0]system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire [0:0]system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire system_interconnect_M01_AXI_WSTRB;
  wire [0:0]system_interconnect_M01_AXI_WVALID;
  wire system_interconnect_M02_AXI_ARADDR;
  wire [2:0]system_interconnect_M02_AXI_ARPROT;
  wire system_interconnect_M02_AXI_ARREADY;
  wire [0:0]system_interconnect_M02_AXI_ARVALID;
  wire system_interconnect_M02_AXI_AWADDR;
  wire [2:0]system_interconnect_M02_AXI_AWPROT;
  wire system_interconnect_M02_AXI_AWREADY;
  wire [0:0]system_interconnect_M02_AXI_AWVALID;
  wire [0:0]system_interconnect_M02_AXI_BREADY;
  wire [1:0]system_interconnect_M02_AXI_BRESP;
  wire system_interconnect_M02_AXI_BVALID;
  wire [31:0]system_interconnect_M02_AXI_RDATA;
  wire [0:0]system_interconnect_M02_AXI_RREADY;
  wire [1:0]system_interconnect_M02_AXI_RRESP;
  wire system_interconnect_M02_AXI_RVALID;
  wire system_interconnect_M02_AXI_WDATA;
  wire system_interconnect_M02_AXI_WREADY;
  wire system_interconnect_M02_AXI_WSTRB;
  wire [0:0]system_interconnect_M02_AXI_WVALID;
  wire system_interconnect_M03_AXI_ARADDR;
  wire [2:0]system_interconnect_M03_AXI_ARPROT;
  wire system_interconnect_M03_AXI_ARREADY;
  wire [0:0]system_interconnect_M03_AXI_ARVALID;
  wire system_interconnect_M03_AXI_AWADDR;
  wire [2:0]system_interconnect_M03_AXI_AWPROT;
  wire system_interconnect_M03_AXI_AWREADY;
  wire [0:0]system_interconnect_M03_AXI_AWVALID;
  wire [0:0]system_interconnect_M03_AXI_BREADY;
  wire [1:0]system_interconnect_M03_AXI_BRESP;
  wire system_interconnect_M03_AXI_BVALID;
  wire [31:0]system_interconnect_M03_AXI_RDATA;
  wire [0:0]system_interconnect_M03_AXI_RREADY;
  wire [1:0]system_interconnect_M03_AXI_RRESP;
  wire system_interconnect_M03_AXI_RVALID;
  wire system_interconnect_M03_AXI_WDATA;
  wire system_interconnect_M03_AXI_WREADY;
  wire system_interconnect_M03_AXI_WSTRB;
  wire [0:0]system_interconnect_M03_AXI_WVALID;

  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign eth0_gt_serial_port_0_GRX_N = qsfp0_gt_grx_n[3:0];
  assign eth0_gt_serial_port_0_GRX_P = qsfp0_gt_grx_p[3:0];
  assign eth1_qsfp_gt_GRX_N = qsfp1_gt_grx_n[3:0];
  assign eth1_qsfp_gt_GRX_P = qsfp1_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp0_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp0_clk_clk_p;
  assign init_clk_0_1 = init_clk;
  assign led_green_l[3:0] = status_reporter_green_led_l;
  assign led_orange_l[3:0] = status_reporter_orang_led_1;
  assign pcie_bridge_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign pcie_bridge_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  assign pcie_mgt_txn[15:0] = pcie_bridge_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = pcie_bridge_pcie_mgt_txp;
  assign qsfp0_gt_gtx_n[3:0] = eth0_gt_serial_port_0_GTX_N;
  assign qsfp0_gt_gtx_p[3:0] = eth0_gt_serial_port_0_GTX_P;
  assign qsfp1_gt_gtx_n[3:0] = eth1_qsfp_gt_GTX_N;
  assign qsfp1_gt_gtx_p[3:0] = eth1_qsfp_gt_GTX_P;
  assign qsfp_clk_0_1_CLK_N = qsfp1_clk_clk_n;
  assign qsfp_clk_0_1_CLK_P = qsfp1_clk_clk_p;
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(pcie_bridge_axi_aclk),
        .AXI_ARESETN(pcie_bridge_axi_aresetn),
        .S_AXI_ARADDR({system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID));
  channel_0_imp_3EIWA1 channel_0
       (.AXIS_RX_tdata(eth0_axis_rx_TDATA),
        .AXIS_RX_tkeep(eth0_axis_rx_TKEEP),
        .AXIS_RX_tlast(eth0_axis_rx_TLAST),
        .AXIS_RX_tuser(eth0_axis_rx_TUSER),
        .AXIS_RX_tvalid(eth0_axis_rx_TVALID),
        .AXIS_TX_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .AXIS_TX_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .AXIS_TX_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .AXIS_TX_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .AXIS_TX_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .S_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .S_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .S_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .S_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .S_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .S_AXI_rdata(system_interconnect_M01_AXI_RDATA),
        .S_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .S_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .S_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .S_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .S_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .S_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .S_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .busy(channel_0_busy),
        .clk(pcie_bridge_axi_aclk),
        .eth_clk(eth0_stream_clk),
        .eth_resetn(eth0_stream_resetn),
        .resetn(pcie_bridge_axi_aresetn));
  channel_1_imp_1R4OFYV channel_1
       (.AXIS_RX_tdata(AXIS_RX_1_TDATA),
        .AXIS_RX_tkeep(AXIS_RX_1_TKEEP),
        .AXIS_RX_tlast(AXIS_RX_1_TLAST),
        .AXIS_RX_tuser(AXIS_RX_1_TUSER),
        .AXIS_RX_tvalid(AXIS_RX_1_TVALID),
        .AXIS_TX_tdata(channel_1_AXIS_TX_TDATA),
        .AXIS_TX_tkeep(channel_1_AXIS_TX_TKEEP),
        .AXIS_TX_tlast(channel_1_AXIS_TX_TLAST),
        .AXIS_TX_tready(channel_1_AXIS_TX_TREADY),
        .AXIS_TX_tvalid(channel_1_AXIS_TX_TVALID),
        .S_AXI_araddr(system_interconnect_M02_AXI_ARADDR),
        .S_AXI_arprot(system_interconnect_M02_AXI_ARPROT),
        .S_AXI_arready(system_interconnect_M02_AXI_ARREADY),
        .S_AXI_arvalid(system_interconnect_M02_AXI_ARVALID),
        .S_AXI_awaddr(system_interconnect_M02_AXI_AWADDR),
        .S_AXI_awprot(system_interconnect_M02_AXI_AWPROT),
        .S_AXI_awready(system_interconnect_M02_AXI_AWREADY),
        .S_AXI_awvalid(system_interconnect_M02_AXI_AWVALID),
        .S_AXI_bready(system_interconnect_M02_AXI_BREADY),
        .S_AXI_bresp(system_interconnect_M02_AXI_BRESP),
        .S_AXI_bvalid(system_interconnect_M02_AXI_BVALID),
        .S_AXI_rdata(system_interconnect_M02_AXI_RDATA),
        .S_AXI_rready(system_interconnect_M02_AXI_RREADY),
        .S_AXI_rresp(system_interconnect_M02_AXI_RRESP),
        .S_AXI_rvalid(system_interconnect_M02_AXI_RVALID),
        .S_AXI_wdata(system_interconnect_M02_AXI_WDATA),
        .S_AXI_wready(system_interconnect_M02_AXI_WREADY),
        .S_AXI_wstrb(system_interconnect_M02_AXI_WSTRB),
        .S_AXI_wvalid(system_interconnect_M02_AXI_WVALID),
        .busy(channel_1_busy),
        .clk(pcie_bridge_axi_aclk),
        .eth_clk(eth1_eth_clk),
        .eth_resetn(eth1_eth_resetn),
        .resetn(pcie_bridge_axi_aresetn));
  eth0_imp_61EMJN eth0
       (.aligned(eth0_aligned),
        .axis_rx_tdata(eth0_axis_rx_TDATA),
        .axis_rx_tkeep(eth0_axis_rx_TKEEP),
        .axis_rx_tlast(eth0_axis_rx_TLAST),
        .axis_rx_tuser(eth0_axis_rx_TUSER),
        .axis_rx_tvalid(eth0_axis_rx_TVALID),
        .axis_tx_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .axis_tx_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .axis_tx_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .axis_tx_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .axis_tx_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .eth_clk(eth0_stream_clk),
        .eth_resetn(eth0_stream_resetn),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(gt_ref_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(gt_ref_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(eth0_gt_serial_port_0_GRX_N),
        .qsfp_gt_grx_p(eth0_gt_serial_port_0_GRX_P),
        .qsfp_gt_gtx_n(eth0_gt_serial_port_0_GTX_N),
        .qsfp_gt_gtx_p(eth0_gt_serial_port_0_GTX_P),
        .sys_resetn_in(pcie_bridge_axi_aresetn));
  eth1_imp_1XD8NFH eth1
       (.aligned(eth1_aligned),
        .axis_rx_tdata(AXIS_RX_1_TDATA),
        .axis_rx_tkeep(AXIS_RX_1_TKEEP),
        .axis_rx_tlast(AXIS_RX_1_TLAST),
        .axis_rx_tuser(AXIS_RX_1_TUSER),
        .axis_rx_tvalid(AXIS_RX_1_TVALID),
        .axis_tx_tdata(channel_1_AXIS_TX_TDATA),
        .axis_tx_tkeep(channel_1_AXIS_TX_TKEEP),
        .axis_tx_tlast(channel_1_AXIS_TX_TLAST),
        .axis_tx_tready(channel_1_AXIS_TX_TREADY),
        .axis_tx_tvalid(channel_1_AXIS_TX_TVALID),
        .eth_clk(eth1_eth_clk),
        .eth_resetn(eth1_eth_resetn),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(qsfp_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(qsfp_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(eth1_qsfp_gt_GRX_N),
        .qsfp_gt_grx_p(eth1_qsfp_gt_GRX_P),
        .qsfp_gt_gtx_n(eth1_qsfp_gt_GTX_N),
        .qsfp_gt_gtx_p(eth1_qsfp_gt_GTX_P),
        .sys_resetn_in(pcie_bridge_axi_aresetn));
  pcie_axi_bridge_imp_5SKLKX pcie_axi_bridge
       (.M_AXI_B_araddr(pcie_axi_bridge_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(pcie_axi_bridge_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(pcie_axi_bridge_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(pcie_axi_bridge_M_AXI_B_ARID),
        .M_AXI_B_arlen(pcie_axi_bridge_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(pcie_axi_bridge_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(pcie_axi_bridge_M_AXI_B_ARPROT),
        .M_AXI_B_arready(pcie_axi_bridge_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(pcie_axi_bridge_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(pcie_axi_bridge_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(pcie_axi_bridge_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(pcie_axi_bridge_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(pcie_axi_bridge_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(pcie_axi_bridge_M_AXI_B_AWID),
        .M_AXI_B_awlen(pcie_axi_bridge_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(pcie_axi_bridge_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(pcie_axi_bridge_M_AXI_B_AWPROT),
        .M_AXI_B_awready(pcie_axi_bridge_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(pcie_axi_bridge_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(pcie_axi_bridge_M_AXI_B_AWVALID),
        .M_AXI_B_bid(pcie_axi_bridge_M_AXI_B_BID),
        .M_AXI_B_bready(pcie_axi_bridge_M_AXI_B_BREADY),
        .M_AXI_B_bresp(pcie_axi_bridge_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(pcie_axi_bridge_M_AXI_B_BVALID),
        .M_AXI_B_rdata(pcie_axi_bridge_M_AXI_B_RDATA),
        .M_AXI_B_rid(pcie_axi_bridge_M_AXI_B_RID),
        .M_AXI_B_rlast(pcie_axi_bridge_M_AXI_B_RLAST),
        .M_AXI_B_rready(pcie_axi_bridge_M_AXI_B_RREADY),
        .M_AXI_B_rresp(pcie_axi_bridge_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(pcie_axi_bridge_M_AXI_B_RVALID),
        .M_AXI_B_wdata(pcie_axi_bridge_M_AXI_B_WDATA),
        .M_AXI_B_wlast(pcie_axi_bridge_M_AXI_B_WLAST),
        .M_AXI_B_wready(pcie_axi_bridge_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(pcie_axi_bridge_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(pcie_axi_bridge_M_AXI_B_WVALID),
        .axi_aclk(pcie_bridge_axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .pcie_mgt_rxn(pcie_bridge_pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_bridge_pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_bridge_pcie_mgt_txn),
        .pcie_mgt_txp(pcie_bridge_pcie_mgt_txp),
        .pcie_refclk_clk_n(CLK_IN_D_0_1_CLK_N),
        .pcie_refclk_clk_p(CLK_IN_D_0_1_CLK_P));
  top_level_status_0_0 status_reporter
       (.S_AXI_ARADDR({system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M03_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M03_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M03_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M03_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M03_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M03_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M03_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M03_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M03_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M03_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M03_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M03_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M03_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M03_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M03_AXI_WVALID),
        .ch0_busy(channel_0_busy),
        .ch1_busy(channel_1_busy),
        .clk(pcie_bridge_axi_aclk),
        .eth0_aligned(eth0_aligned),
        .eth1_aligned(eth1_aligned),
        .led_green(status_reporter_green_led_l),
        .led_orange(status_reporter_orang_led_1),
        .resetn(pcie_bridge_axi_aresetn));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(system_interconnect_M01_AXI_RDATA[0]),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .M02_AXI_araddr(system_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(system_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(system_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(system_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(system_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(system_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(system_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(system_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(system_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(system_interconnect_M02_AXI_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(system_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(system_interconnect_M02_AXI_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(system_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(system_interconnect_M02_AXI_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(system_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(system_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(system_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(system_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(system_interconnect_M02_AXI_WVALID),
        .M03_AXI_araddr(system_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(system_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(system_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(system_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(system_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(system_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(system_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(system_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bid(1'b0),
        .M03_AXI_bready(system_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(system_interconnect_M03_AXI_BRESP),
        .M03_AXI_buser(1'b0),
        .M03_AXI_bvalid(system_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(system_interconnect_M03_AXI_RDATA[0]),
        .M03_AXI_rid(1'b0),
        .M03_AXI_rlast(1'b0),
        .M03_AXI_rready(system_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(system_interconnect_M03_AXI_RRESP),
        .M03_AXI_ruser(1'b0),
        .M03_AXI_rvalid(system_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(system_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(system_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(system_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(system_interconnect_M03_AXI_WVALID),
        .S00_AXI_araddr(pcie_axi_bridge_M_AXI_B_ARADDR),
        .S00_AXI_arburst(pcie_axi_bridge_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_axi_bridge_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_axi_bridge_M_AXI_B_ARID),
        .S00_AXI_arlen(pcie_axi_bridge_M_AXI_B_ARLEN),
        .S00_AXI_arlock(pcie_axi_bridge_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_axi_bridge_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_axi_bridge_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(pcie_axi_bridge_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(pcie_axi_bridge_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_axi_bridge_M_AXI_B_AWADDR),
        .S00_AXI_awburst(pcie_axi_bridge_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_axi_bridge_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_axi_bridge_M_AXI_B_AWID),
        .S00_AXI_awlen(pcie_axi_bridge_M_AXI_B_AWLEN),
        .S00_AXI_awlock(pcie_axi_bridge_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_axi_bridge_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_axi_bridge_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(pcie_axi_bridge_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(pcie_axi_bridge_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_axi_bridge_M_AXI_B_BID),
        .S00_AXI_bready(pcie_axi_bridge_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_axi_bridge_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_axi_bridge_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_axi_bridge_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_axi_bridge_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_axi_bridge_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_axi_bridge_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_axi_bridge_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_axi_bridge_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_axi_bridge_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(pcie_axi_bridge_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_axi_bridge_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_axi_bridge_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(pcie_axi_bridge_M_AXI_B_WVALID),
        .aclk(pcie_bridge_axi_aclk),
        .aresetn(pcie_bridge_axi_aresetn));
endmodule
