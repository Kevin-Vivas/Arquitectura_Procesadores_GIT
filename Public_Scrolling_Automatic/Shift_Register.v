module Shift_Register(
    output reg [6:0] Dout1, Dout2, Dout3, Dout4, Dout5,
	 output wire [6:0]Dout0,
    input wire clock, En,
    input wire [6:0] Din
);

assign Dout0 = Din;

initial
begin
        Dout1 = 7'b1111111;
        Dout2 = 7'b1111111;
        Dout3 = 7'b1111111;
        Dout4 = 7'b1111111;
        Dout5 = 7'b1111111;
end

    always @(posedge clock, negedge En ) begin : SHIFT_REGISTER
        
		  if (En == 1'b0) begin
		  		Dout5 <= 7'b1111111;
            Dout4 <= 7'b1111111;
            Dout3 <= 7'b1111111;
            Dout2 <= 7'b1111111;
            Dout1 <= 7'b1111111;
            
		  /*
		      Dout0 <= 7'b1111111;
				Dout1<=Din;
            Dout1 <= 7'b1111111;
				Dout2 <=Din;
            Dout2 <= 7'b1111111;
				Dout3 <=Din;
            Dout3 <= 7'b1111111;
				Dout4 <=Din;
            Dout4 <= 7'b1111111;
				Dout5 <=Din;
            Dout5 <= 7'b1111111;
		  */
		  /*
		  Dout0 = 7'b1111111;
        Dout1 = 7'b1111111;
        Dout2 = 7'b1111111;
        Dout3 = 7'b1111111;
        Dout4 = 7'b1111111;
        Dout5 = 7'b1111111;
        */

				
        end else begin
		  		Dout5 <= Dout4;
            Dout4 <= Dout3;
            Dout3 <= Dout2;
            Dout2 <= Dout1;
            Dout1 <= Din;

        end
    end

endmodule

