property CONST (N);
    @(posedge clock) N == $past(N);
endproperty
`define STORE 7'b0100011
`define LOAD 7'b0000011

reg first;
`ifdef SYMSTART
wire rst_ni_psuedo;
`endif
always @(posedge clock) begin
`ifdef SYMSTART
    if (!rst_ni_psuedo) begin
`else
    if (!reset) begin
`endif
        first <= 1;
    end else if (first == 1) begin
        first <= 0;
    end 
end

