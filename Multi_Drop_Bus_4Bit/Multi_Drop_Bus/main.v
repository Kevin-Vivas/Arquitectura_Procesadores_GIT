module main(
    input [7:0] Bus,
    input CLK, Reset,
	 output wire [6:0] Digit1,
	 output wire [6:0] Digit2,
	 output wire [6:0] Digit3,
	 output wire [6:0] Digit4,
	 output wire [6:0] Digit5,
	 output wire [6:0] Digit6,
    input [1:0] EN
	 
);
wire [7:0] n0;
wire [7:0] n1;
wire [7:0] n2;
Multi_Drop_Bus	U0(
    .Bus(Bus),
    .CLK(CLK),
    .R(Reset),
    .EN(EN),
    .Aen(n0),
	 .Ben(n1),
	 .Cen(n2)

);

    DecoBin2Hex U1(
        .BinInput(n0[3:0]),
        .HexOut(Digit1)
    );
	 
    DecoBin2Hex U2(
        .BinInput(n0[7:4]),
        .HexOut(Digit2)
    );
	     DecoBin2Hex U3(
        .BinInput(n1[3:0]),
        .HexOut(Digit3)
    );
	     DecoBin2Hex U4(
        .BinInput(n1[7:4]),
        .HexOut(Digit4)
    );
	 	     DecoBin2Hex U5(
        .BinInput(n2[3:0]),
        .HexOut(Digit5)
    );
	     DecoBin2Hex U6(
        .BinInput(n2[7:4]),
        .HexOut(Digit6)
    );
endmodule