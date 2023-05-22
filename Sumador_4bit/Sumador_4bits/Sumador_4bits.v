module Sumador_4bits(
    input wire [3:0] A,
    input wire [3:0] B,
    output reg [4:0] X
);

  reg [4:0] Suma; // Variable temporal para almacenar el resultado de la suma

  always @(A,B) begin
    Suma = A + B;
    X = Suma[4:0]; // Asignar el resultado a la salida X de 4 bits
  end

endmodule
