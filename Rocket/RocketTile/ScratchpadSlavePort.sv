// Generated by CIRCT firtool-1.75.0

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module ScratchpadSlavePort(	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
  output        auto_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [12:0] auto_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [12:0] auto_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         io_dmem_req_ready,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output        io_dmem_req_valid,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output [31:0] io_dmem_req_bits_addr,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output [4:0]  io_dmem_req_bits_cmd,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output [1:0]  io_dmem_req_bits_size,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output        io_dmem_s1_kill,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output [31:0] io_dmem_s1_data_data,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  output [3:0]  io_dmem_s1_data_mask,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  input         io_dmem_s2_nack,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  input         io_dmem_resp_valid,	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
  input  [31:0] io_dmem_resp_bits_data_raw	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
);

  wire [7:0][3:0] _GEN = '{4'h0, 4'h0, 4'h0, 4'h8, 4'hF, 4'hE, 4'hD, 4'hC};
  reg  [2:0]      state;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24]
  wire            _io_dmem_req_bits_T_2 = state == 3'h4;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :56:17]
  reg  [2:0]      acq_opcode;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [2:0]      acq_param;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [1:0]      acq_size;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [12:0]     acq_source;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [31:0]     acq_address;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [3:0]      acq_mask;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  reg  [31:0]     acq_data;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
  wire            _ready_T = state == 3'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire            _nodeIn_d_bits_data_T = state == 3'h2;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24, :67:44, generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire            ready = _ready_T | _nodeIn_d_bits_data_T & io_dmem_resp_valid & auto_in_d_ready;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:112:{35,56,78}, generators/rocket-chip/src/main/scala/util/package.scala:16:47]
  wire            _io_dmem_req_bits_T = state == 3'h3;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24, :67:44, :113:57]
  wire            nodeIn_a_ready = io_dmem_req_ready & ready;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:112:35, :118:40]
  wire [2:0]      _io_dmem_req_bits_T_1_opcode = _io_dmem_req_bits_T ? acq_opcode : auto_in_a_bits_opcode;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18, :113:57, :119:41]
  wire [2:0]      _io_dmem_req_bits_T_1_param = _io_dmem_req_bits_T ? acq_param : auto_in_a_bits_param;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18, :113:57, :119:41]
  wire [1:0]      io_dmem_req_bits_req_size = _io_dmem_req_bits_T ? acq_size : auto_in_a_bits_size;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18, :113:57, :119:41]
  wire [31:0]     io_dmem_req_bits_req_addr = _io_dmem_req_bits_T ? acq_address : auto_in_a_bits_address;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18, :113:57, :119:41]
  wire            _io_dmem_req_bits_T_3 = _io_dmem_req_bits_T_1_opcode == 3'h1;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :67:44, :119:41]
  wire [1:0]      _io_dmem_req_bits_mask_full_desired_mask_T = {io_dmem_req_bits_req_addr[0] | (|io_dmem_req_bits_req_size), ~(io_dmem_req_bits_req_addr[0])};	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:20:{27,42,53}, :21:22, :22:16, generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:119:41]
  wire            nodeIn_d_valid = io_dmem_resp_valid | state == 3'h5;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24, :125:{41,50}]
  reg  [31:0]     nodeIn_d_bits_data_r;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
    if (reset)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
      state <= 3'h4;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24]
    else if ((auto_in_a_valid & ready | _io_dmem_req_bits_T) & io_dmem_req_ready)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:60:26, :112:35, :113:{38,48,57}]
      state <= 3'h1;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24]
    else if (io_dmem_s2_nack)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
      state <= 3'h3;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24, :67:44]
    else if (auto_in_d_ready & nodeIn_d_valid)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:125:41, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      state <= 3'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24]
    else if (io_dmem_resp_valid)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:44:16]
      state <= 3'h5;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24]
    else if (_io_dmem_req_bits_T_2 & auto_in_a_valid)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:56:{17,28}]
      state <= 3'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24]
    else if (state == 3'h1)	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :55:17]
      state <= 3'h2;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:53:24, :67:44]
    if (nodeIn_a_ready & auto_in_a_valid) begin	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:118:40, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      acq_opcode <= auto_in_a_bits_opcode;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_param <= auto_in_a_bits_param;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_size <= auto_in_a_bits_size;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_source <= auto_in_a_bits_source;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_address <= auto_in_a_bits_address;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_mask <= auto_in_a_bits_mask;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
      acq_data <= auto_in_a_bits_data;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:62:18]
    end
    if (_nodeIn_d_bits_data_T)	// @[generators/rocket-chip/src/main/scala/util/package.scala:16:47]
      nodeIn_d_bits_data_r <= io_dmem_resp_bits_data_raw;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:3];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
    initial begin	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM[i[1:0]] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
        end	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
        state = _RANDOM[2'h0][2:0];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24]
        acq_opcode = _RANDOM[2'h0][5:3];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :62:18]
        acq_param = _RANDOM[2'h0][8:6];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :62:18]
        acq_size = _RANDOM[2'h0][10:9];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :62:18]
        acq_source = _RANDOM[2'h0][23:11];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :62:18]
        acq_address = {_RANDOM[2'h0][31:24], _RANDOM[2'h1][23:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :62:18]
        acq_mask = _RANDOM[2'h1][27:24];	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
        acq_data = {_RANDOM[2'h1][31:28], _RANDOM[2'h2][27:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
        nodeIn_d_bits_data_r = {_RANDOM[2'h2][31:29], _RANDOM[2'h3][28:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign auto_in_a_ready = nodeIn_a_ready;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :118:40]
  assign auto_in_d_valid = nodeIn_d_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :125:41]
  assign auto_in_d_bits_opcode = {2'h0, ~(acq_opcode == 3'h0 | acq_opcode == 3'h1)};	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18, :126:24, generators/rocket-chip/src/main/scala/util/package.scala:16:47, :81:59]
  assign auto_in_d_bits_size = acq_size;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
  assign auto_in_d_bits_source = acq_source;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
  assign auto_in_d_bits_data = _nodeIn_d_bits_data_T ? io_dmem_resp_bits_data_raw : nodeIn_d_bits_data_r;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, generators/rocket-chip/src/main/scala/util/package.scala:16:47, :88:{42,63}]
  assign io_dmem_req_valid = auto_in_a_valid & (_ready_T | _nodeIn_d_bits_data_T) | _io_dmem_req_bits_T;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :113:57, :114:{48,65}, generators/rocket-chip/src/main/scala/util/package.scala:16:47, :81:59]
  assign io_dmem_req_bits_addr = io_dmem_req_bits_req_addr;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :119:41]
  assign io_dmem_req_bits_cmd = _io_dmem_req_bits_T_2 | _io_dmem_req_bits_T_3 & (&((_io_dmem_req_bits_T ? acq_mask : auto_in_a_bits_mask) | ~{(io_dmem_req_bits_req_addr[1] ? _io_dmem_req_bits_mask_full_desired_mask_T : 2'h0) | {2{io_dmem_req_bits_req_size[1]}}, io_dmem_req_bits_req_addr[1] ? 2'h0 : _io_dmem_req_bits_mask_full_desired_mask_T})) ? 5'h1 : _io_dmem_req_bits_T_1_opcode == 3'h4 ? 5'h0 : _io_dmem_req_bits_T_1_opcode == 3'h3 ? {1'h0, _io_dmem_req_bits_T_1_param == 3'h3 ? 4'h4 : _io_dmem_req_bits_T_1_param == 3'h2 ? 4'hB : _io_dmem_req_bits_T_1_param == 3'h1 ? 4'hA : _io_dmem_req_bits_T_1_param == 3'h0 ? 4'h9 : 4'h0} : _io_dmem_req_bits_T_1_opcode == 3'h2 ? {1'h0, _GEN[_io_dmem_req_bits_T_1_param]} : _io_dmem_req_bits_T_3 ? 5'h11 : {4'h0, _io_dmem_req_bits_T_1_opcode == 3'h0};	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:20:{22,27,42,47,53}, :21:22, :22:16, generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :56:17, :62:18, :67:{15,44}, :70:63, :76:63, :87:{17,19,34}, :89:{30,73,88}, :90:17, :113:57, :119:41]
  assign io_dmem_req_bits_size = io_dmem_req_bits_req_size;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :119:41]
  assign io_dmem_s1_kill = state != 3'h1;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :53:24, :122:30]
  assign io_dmem_s1_data_data = acq_data;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
  assign io_dmem_s1_data_mask = acq_mask;	// @[generators/rocket-chip/src/main/scala/rocket/ScratchpadSlavePort.scala:43:9, :62:18]
endmodule

