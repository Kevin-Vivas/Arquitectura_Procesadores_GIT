module Flip_Flop_D(
    input  wire Clk,
	 input  wire [4:0] D,
    output reg [4:0] Q0,
    output reg [4:0] Qn0,
    output reg [4:0] Q1,
    output reg [4:0] Qn1
);

always @(posedge Clk) 
begin
    		Q0  <= D;
			Qn0 <= ~D;
         Q1  <= D;
			Qn1 <= ~D;

end
endmodule
