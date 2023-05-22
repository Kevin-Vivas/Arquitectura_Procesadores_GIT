module Counter_Five_Bits	 (
 output reg [4:0] Counter,
 input wire clk, Reset
);
    

	 
	 
    always @(posedge clk , negedge Reset) begin : COUNTER
      
      if (!Reset)
        Counter<= 0;
      else
            Counter <= Counter + 1;
            
            
    end

    
endmodule
