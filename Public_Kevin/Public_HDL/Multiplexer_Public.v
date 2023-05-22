module Multiplexer_Public(
  output reg [4:0] S,
  input wire[4:0] Counter, SW,
  input EN
);

always @ (EN, Counter, SW)
begin
  if (EN == 1'b1)
    S = Counter;
  else
    S = SW;
end

endmodule
