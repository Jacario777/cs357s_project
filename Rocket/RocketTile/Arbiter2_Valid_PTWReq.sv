// Generated by CIRCT firtool-1.75.0
module Arbiter2_Valid_PTWReq(	// @[src/main/scala/chisel3/util/Arbiter.scala:133:7]
  input  io_in_0_bits_bits_need_gpa,	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
  input  io_in_0_bits_bits_stage2,	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
  input  io_in_1_bits_bits_need_gpa,	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
  input  io_in_1_bits_bits_stage2,	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
  output io_out_bits_bits_need_gpa,	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
  output io_out_bits_bits_stage2	// @[src/main/scala/chisel3/util/Arbiter.scala:140:14]
);

  assign io_out_bits_bits_need_gpa = io_in_1_bits_bits_need_gpa;	// @[src/main/scala/chisel3/util/Arbiter.scala:133:7]
  assign io_out_bits_bits_stage2 = io_in_1_bits_bits_stage2;	// @[src/main/scala/chisel3/util/Arbiter.scala:133:7]
endmodule

