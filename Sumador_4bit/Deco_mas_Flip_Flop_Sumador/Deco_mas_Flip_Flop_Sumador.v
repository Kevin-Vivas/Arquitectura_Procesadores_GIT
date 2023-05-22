module Deco_mas_Flip_Flop_Sumador(
  input wire [3:0] A,
  input wire [3:0] B,
  input wire Clk,
	
  output wire [4:0] Q0,
  output wire [4:0] Q1,
  output wire Aout0,
  output wire Bout0,
  output wire Cout0,
  output wire Dout0,
  output wire Eout0,
  output wire Fout0,
  output wire Gout0,
  output wire Aout1,
  output wire Bout1,
  output wire Cout1,
  output wire Dout1,
  output wire Eout1,
  output wire Fout1,
  output wire Gout1
  
  
);

  wire [4:0] X; // Salida del sumador para conectar con D del flip flop

  Suma_mas_FlipD U0(
    .A(A),
    .B(B),
    .Clk(Clk),
    .X(X),
    .Q0(Q0),
    .Q1(Q1)
  );

  decodificador_hex U1(
    .A0(Q1[0]),
    .B0(Q1[1]),
    .C0(Q1[2]),
    .D0(Q1[3]),
    .Aout0(Aout0),
    .Bout0(Bout0),
    .Cout0(Cout0),
    .Dout0(Dout0),
    .Eout0(Eout0),
    .Fout0(Fout0),
    .Gout0(Gout0)
  );
  
endmodule