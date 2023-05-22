module main(
  //Ram
  //input wire WE,
  input wire [4:0] data_in_RW,
  input wire Clock_Divider, 
  input wire Reset_Counter_Five_Bits,
  input wire Boton,
  
  //output wire [5:0] data_out0,
  //ROM
  
  //input wire [4:0] address1
  //Shift_Register
  output wire [6:0] Dout0, Dout1, Dout2, Dout3, Dout4, Dout5,
  output wire Led_Mux,
    output Led_clk,
  // Multiplexer_Public
  input wire SW

  
  
);
wire [4:0] n0;
//assign n1 = WE;
wire Selector_Mux;
wire [6:0] n2;
wire [4:0] n3;
wire [4:0] n4;
wire [4:0] clk_Counter;
wire  Clock_Out_Divider;
assign Led_clk = Clock_Out_Divider;
assign Led_Mux = Clk_Counter;


// Instanciación del módulo dos_Read_Write

  Counter_Five_Bits U0(
    .Counter(n3),
    .clk(Clk_Counter),
    .Reset(Reset_Counter_Five_Bits)
  );

Multiplexer_Public U1(
  .Out_Mux(Clk_Counter),
  .Int_1(Boton),
  .Int_0(Clock_Out_Divider),
  .EN(SW)
);



  Read_Write U2(
  .WE(SW),
  .data_in_RW(data_in_RW),
  .clock(Clk_Counter),
  .address_RW(n3),
  .Data_Out_RW(n0)
);

ROM U3(
  .Address_Rom(n0), 
  .Data_Out_Rom(n2),
  .clock(Clock_Out_Divider),
  .En(SW)
);

Shift_Register U4(
    .Dout0(Dout0),
    .Dout1(Dout1),
    .Dout2(Dout2),
    .Dout3(Dout3),
    .Dout4(Dout4),
    .Dout5(Dout5),
    .clock(Clock_Out_Divider),
    .En(SW),
    .Din(n2)
);

  Clock_Divider U5 (
    .Clk_In(Clock_Divider),
    .En(SW),
    .Clk_Out(Clock_Out_Divider),
	 
  );



// Otros componentes y lógica de su diseño aquí

endmodule