module main(
  input wire [3:0] A,
  input wire [3:0] B,
  input wire Clk,
	
  //output wire [4:0] Q0,
  //output wire [4:0] Q1,
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
  output wire Gout1,
  output wire Aout2,
  output wire Bout2,
  output wire Cout2,
  output wire Dout2,
  output wire Eout2,
  output wire Fout2,
  output wire Gout2,
  output wire Aout3,
  output wire Bout3,
  output wire Cout3,
  output wire Dout3,
  output wire Eout3,
  output wire Fout3,
  output wire Gout3
  
);

  wire [4:0] X; // Salida del sumador para conectar con D del flip flop
  wire [4:0] Q0;// Salida del sumador para conectar con D del flip flop
  wire [4:0] Q1;
  Sumador_4bits U0(
    .A(A),
    .B(B),
    .X(X)
  );
  
    Flip_Flop_D U1(
    .D(X),
    .Clk(Clk),
    .Q0(Q0),
    .Q1(Q1)

  );

  
  decodificador_hex U2(
     .A0(Q0[0]),
     .B0(Q0[1]),
     .C0(Q0[2]),
     .D0(Q0[3]),
     .Aout0(Aout0),
     .Bout0(Bout0),
     .Cout0(Cout0),
     .Dout0(Dout0),
     .Eout0(Eout0),
     .Fout0(Fout0),
     .Gout0(Gout0)
  );
  
    decodificador_hex U3(
     .A0(Q0[4]),
     .B0(1'b0),
     .C0(1'b0),
     .D0(1'b0),
     .Aout0(Aout1),
     .Bout0(Bout1),
     .Cout0(Cout1),
     .Dout0(Dout1),
     .Eout0(Eout1),
     .Fout0(Fout1),
     .Gout0(Gout1)
  );

      decodificador_hex U4(
     .A0(Q1[0]),
     .B0(Q1[1]),
     .C0(Q1[2]),
     .D0(Q1[3]),
     .Aout0(Aout2),
     .Bout0(Bout2),
     .Cout0(Cout2),
     .Dout0(Dout2),
     .Eout0(Eout2),
     .Fout0(Fout2),
     .Gout0(Gout2)
  );
  
      decodificador_hex U5(
     .A0(Q1[4]),
     .B0(1'b0),
     .C0(1'b0),
     .D0(1'b0),
     .Aout0(Aout3),
     .Bout0(Bout3),
     .Cout0(Cout3),
     .Dout0(Dout3),
     .Eout0(Eout3),
     .Fout0(Fout3),
     .Gout0(Gout3)
  );



endmodule
