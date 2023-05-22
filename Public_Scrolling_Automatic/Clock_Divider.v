module Clock_Divider (
    input wire Clk_In,
    input wire En,
    output wire Clk_Out,
    output wire Led_clk
);

    reg [22:0] Counter;
    reg Inner_Clk;
    assign Clk_Out = Inner_Clk;
    assign Led_clk = Inner_Clk;

    always @(posedge Clk_In) begin
        if (En == 0) begin
            Inner_Clk <= 1; // Mantén el reloj en uno cuando el interruptor esté en cero
            Counter <= 0;
        end else begin
            Counter <= Counter + 1;
            if (Counter > 8333333) begin
                Inner_Clk <= ~Inner_Clk;
                Counter <= 0;
            end
        end
    end

endmodule

