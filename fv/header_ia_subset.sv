// Set up common formal environment for CVA6 with symbolic instruction being
// driven at IF stage and assumptions that constrain the inputs from frontend,
// which is bbox for verificaiton purpose

// Post-trace: any instruction encoding but invalid
// Assume IUV issued at first cycle after reset
// Symbolic reset on the memory and regfile
`define INTRA_TRANSMITTER 

// =============================================================================
// Frontend-legal-setup (since we bbox) and processor in operation
// =============================================================================

//BBOX_AMO_REQ: assume property (@(posedge clk_i) 
//      commit_stage_i.amo_resp_i.ack == 1'b0);
//BRANCH: assume property (@(posedge clk_i) 
//      id_stage_i.fetch_entry_i.branch_predict.predict_address != pc0);

NON_EXCEPTION_FRONTEND: assume property (@(posedge clk_i)
  i_frontend.fetch_entry_o.ex.valid == 1'b0
  // tag this fetched instruction is not exceptioned already at front-end
  // (e.g., INSTR_PAGE_FAULT or INSTR_ACCESS_FAULT)
);
IF_ID_CONTRACT: assume property (@(posedge clk_i)
  // yet ack then hold
  (id_stage_i.fetch_entry_valid_i && !(fetch_ready_id_if)) |=>
  (
  ($past(id_stage_i.fetch_entry_valid_i) == id_stage_i.fetch_entry_valid_i) &&
  ($past(id_stage_i.instruction) == id_stage_i.instruction) &&
  ($past(id_stage_i.fetch_entry_i.address) == id_stage_i.fetch_entry_i.address)
  )
);

IN_OP_MODE: assume property (@(posedge clk_i) rst_ni == 1'd1);
NOHALT: assume property (@(posedge clk_i) commit_stage_i.halt_i == 1'b0);

// =============================================================================
// Set up instruction of interest 
// =============================================================================
wire [32-1:0] i0;
i0_const: assume property (@(posedge clk_i) CONST(i0));

// =============================================================================
// Set up pc value, instruction issue, and execution contexts
// =============================================================================
// (pc0, i0)
wire [64-1:0] pc0;

pc0_const: assume property (@(posedge clk_i) CONST(pc0));
pc0_nozero: assume property (@(posedge clk_i) pc0 != '0);

wire instn_begin = (id_stage_i.fetch_entry_valid_i && 
                    id_stage_i.fetch_entry_i.address == pc0);

pc0_i0_assoc_1: assume property (@(posedge clk_i) 
    id_stage_i.fetch_entry_i.address == pc0 |-> id_stage_i.instruction == i0);
pc0_i0_assoc_2: assume property (@(posedge clk_i) 
    id_stage_i.fetch_entry_i.address == pc0 |-> 
    (id_stage_i.fetch_entry_valid_i == 1'b1 && 
`ifndef SYSINSN
    id_stage_i.decoded_instruction.ex.valid == 1'b0) 
`else
    id_stage_i.fetch_entry_i.ex.valid == 1'b0)
`endif
    // IF issuing a valid request, i.e. no exception raised so far at IF
);

VALID_INSTN: assume property (@(posedge clk_i) id_stage_i.fetch_entry_valid_i);

ISSUE_ONCE: assume property (@(posedge clk_i) instn_begin |=> 
        always !(id_stage_i.fetch_entry_i.address == pc0));
EVENTUAL_ISSUE: assume property (@(posedge clk_i) first |->
    s_eventually(instn_begin));
EXE_IUV: assume property (@(posedge clk_i) instn_begin |-> fetch_ready_id_if);


// =============================================================================
// ## Performing location annotation
// ============================================================================= 


wire ID_s1 = 
	(_ibuf_io_pc == pc0) && 
	(_ibuf_io_inst_0_valid == 1'd1) && 
	 1'b1; 
wire EX_s1 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	 1'b1; 
wire EX_s2 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	 1'b1; 
wire EX_s3 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	 1'b1; 
wire MEM_s1 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s2 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s4 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s5 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s6 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire WB_s10 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s11 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
wire WB_s2 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s4 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s6 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s8 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s9 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
IASUBSET: assume property (@(posedge clk_i) !(1'b0
  | scb_1_s12 | scb_1_s13 | scb_1_s14 | scb_1_s8 
  | scb_2_s12 | scb_2_s13 | scb_2_s14 | scb_2_s8 
  | scb_3_s12 | scb_3_s13 | scb_3_s14 | scb_3_s8 ));
IASUBSET_2: assume property (@(posedge clk_i)
// ADD
((id_stage_i.instruction[31:25] == 7'b0000000) && (id_stage_i.instruction[14:12] == 3'b000)
&& (id_stage_i.instruction[11:7] != 5'd0) && (id_stage_i.instruction[6:0] == 7'b0110011))
||
// BEQ
((id_stage_i.instruction[14:12] == 3'b000) && (id_stage_i.instruction[6:0] == 7'b1100011))
|| 
// SW
((id_stage_i.instruction[14:12] == 3'b010) && (id_stage_i.instruction[6:0] == 7'b0100011))
|| 
// LW
((id_stage_i.instruction[14:12] == 3'b010) && (id_stage_i.instruction[11:7] != 5'd0) && (id_stage_i.instruction[6:0] == 7'b0000011))
|| 
// NOP
(id_stage_i.instruction == 32'h00000013)
||
// DIV
((id_stage_i.instruction[31:25] == 7'b0000001) && (id_stage_i.instruction[14:12] == 3'b100) &&
(id_stage_i.instruction[11:7] != 5'd0) && (id_stage_i.instruction[6:0] == 7'b0110011))
);
