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
	(_ibuf_io_inst_0_valid == 1'd0) && 
	(ctrl_killd == 1'd1) && 
	 1'b1; 
wire ID_s2 = 
	(_ibuf_io_pc == pc0) && 
	(_ibuf_io_inst_0_valid == 1'd1) && 
	(ctrl_killd == 1'd0) && 
	 1'b1; 
wire ID_s3 = 
	(_ibuf_io_pc == pc0) && 
	(_ibuf_io_inst_0_valid == 1'd1) && 
	(ctrl_killd == 1'd1) && 
	 1'b1; 
wire EX_s1 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s10 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s11 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s12 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s13 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s14 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s15 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s16 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s17 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s18 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s19 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s2 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s20 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s21 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s22 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s23 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s24 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s25 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s26 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s27 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s28 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s29 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s3 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s30 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s31 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s32 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s33 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s34 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s35 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s36 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s37 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s38 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s39 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s4 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s40 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s41 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s42 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s43 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s44 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s45 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s46 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s47 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s48 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s49 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s5 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s50 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s51 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s52 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s53 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s54 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s55 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s56 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s57 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s58 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s59 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s6 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s60 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s61 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s62 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s63 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd1) && 
	(ex_reg_flush_pipe == 1'd1) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s7 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd0) && 
	(ex_ctrl_div == 1'd1) && 
	(ex_ctrl_branch == 1'd1) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire EX_s8 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd0) && 
	 1'b1; 
wire EX_s9 = 
	(ex_reg_pc == pc0) && 
	(ex_pc_valid == 1'd0) && 
	(ex_reg_flush_pipe == 1'd0) && 
	(ex_ctrl_mul == 1'd1) && 
	(ex_ctrl_div == 1'd0) && 
	(ex_ctrl_branch == 1'd0) && 
	(ex_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s1 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s10 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s11 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s12 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s13 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s14 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s15 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s2 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s3 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s4 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s5 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s6 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s7 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd0) && 
	(mem_reg_flush_pipe == 1'd1) && 
	(mem_ctrl_branch == 1'd1) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire MEM_s8 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd0) && 
	 1'b1; 
wire MEM_s9 = 
	(mem_reg_pc == pc0) && 
	(mem_pc_valid == 1'd1) && 
	(mem_reg_flush_pipe == 1'd0) && 
	(mem_ctrl_branch == 1'd0) && 
	(mem_ctrl_mem == 1'd1) && 
	 1'b1; 
wire WB_s10 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s12 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s14 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s16 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s18 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s2 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s20 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s22 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s24 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s26 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s28 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s30 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s32 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s33 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
wire WB_s34 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s35 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
wire WB_s36 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s37 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
wire WB_s38 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s39 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd1) && 
	 1'b1; 
wire WB_s4 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s40 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s42 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s44 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s46 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s48 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s50 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s52 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s54 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s56 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s58 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s6 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd0) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s60 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s62 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd1) && 
	(wb_reg_replay == 1'd1) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd1) && 
	(wb_ctrl_wxd == 1'd1) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
wire WB_s8 = 
	(wb_reg_pc == pc0) && 
	(wb_reg_valid == 1'd0) && 
	(wb_reg_replay == 1'd0) && 
	(wb_xcpt == 1'd1) && 
	(wb_reg_flush_pipe == 1'd0) && 
	(wb_ctrl_wxd == 1'd0) && 
	((wb_valid == 1'b1) == 1'd0) && 
	 1'b1; 
