module Read_Write(
  input wire WE,
  input wire [4:0] data_in_RW,
  input wire clock,
  input wire [4:0] address_RW,
  output reg [4:0] Data_Out_RW
  
  
);

reg [4:0] RW[0:32];

always @(posedge  clock) begin
  if (!WE) begin // Si ambos botones están presionados
    RW[address_RW] <= data_in_RW; // Escribir en la dirección seleccionada

  end else begin
    Data_Out_RW <= RW[address_RW]; // Leer el valor almacenado en la dirección seleccionada
  end
end

endmodule