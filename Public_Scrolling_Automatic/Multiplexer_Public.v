module Multiplexer_Public(
  output reg  Out_Mux,
  input wire Int_1, Int_0,
  input EN
);

always @ (EN, Int_0, Int_1)
begin
  if (EN == 1'b0)
    Out_Mux = Int_1;
  else
    Out_Mux = Int_0;
end

endmodule
