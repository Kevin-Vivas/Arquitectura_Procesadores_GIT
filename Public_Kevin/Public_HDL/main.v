module main(
  //Ram
  input wire WE,
  input wire [4:0] data_in_RW,
  input wire clock,
  
  //output wire [5:0] data_out0,
  //ROM
  
  //input wire [4:0] address1
  //Shift_Register
  output wire [6:0] Dout0, Dout1, Dout2, Dout3, Dout4, Dout5,
  
  // Multiplexer_Public
  input wire [4:0]SW

  
  
);
wire [4:0] n0;
assign n1 = WE;
wire [6:0] n2;
wire [4:0] n3;
wire [4:0] n4;

// Instanciación del módulo dos_Read_Write

  Counter_Five_Bits U0(
    .Counter(n4),
    .clk(clock),
    .Reset(WE)
  );

Multiplexer_Public U1(
  .S(n3),
  .Counter(n4),
  .SW(SW),
  .EN(WE)
);



  Read_Write U2(
  .WE(WE),
  .data_in_RW(data_in_RW),
  .clock(clock),
  .address_RW(n3),
  .Data_Out_RW(n0)
);

ROM U3(
  .Address_Rom(n0), 
  .Data_Out_Rom(n2),
  .clock(clock),
  .En(WE)
);

Shift_Register U4(
    .Dout0(Dout0),
    .Dout1(Dout1),
    .Dout2(Dout2),
    .Dout3(Dout3),
    .Dout4(Dout4),
    .Dout5(Dout5),
    .clock(clock),
    .En(WE),
    .Din(n2)
);





// Otros componentes y lógica de su diseño aquí

endmodule