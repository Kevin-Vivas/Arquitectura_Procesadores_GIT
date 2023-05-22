//DECODIFICADOR
module DecoBin2Hex(
    input [3:0] BinInput, 
    output reg [6:0] HexOut
);
    always @(BinInput)begin
        case(BinInput)
                        //7'bGFEDCBA   
        4'b0000: HexOut = 7'b1000000; // 0
        4'b0001: HexOut = 7'b1111001; // 1
        4'b0010: HexOut = 7'b0100100; // 2
        4'b0011: HexOut = 7'b0110000; // 3
        4'b0100: HexOut = 7'b0011001; // 4
        4'b0101: HexOut = 7'b0010010; // 5
        4'b0110: HexOut = 7'b0000010; // 6
        4'b0111: HexOut = 7'b1111000; // 7
        4'b1000: HexOut = 7'b0000000; // 8
        4'b1001: HexOut = 7'b0010000; // 9
        4'b1010: HexOut = 7'b0001000; // A
        4'b1011: HexOut = 7'b0000011; // B
        4'b1100: HexOut = 7'b1000110; // C
        4'b1101: HexOut = 7'b0100001; // D
        4'b1110: HexOut = 7'b0000110; // E
        4'b1111: HexOut = 7'b0001110; // F
        endcase
    end
endmodule