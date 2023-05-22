module multiplexor_4_a_1(input [3:0] entradas, input [1:0] selectores_S1_S2, output reg salida_xor);

always @(*) begin
    case(selectores_S1_S2)
        2'b00: salida_xor = entradas[0];
        2'b01: salida_xor = entradas[1];
        2'b10: salida_xor = entradas[2];
        2'b11: salida_xor = entradas[3];
    endcase
end

endmodule
