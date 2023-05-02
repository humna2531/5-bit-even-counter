module even_counter (
  input clk,
  input reset,
  output reg [4:0] count
);
  always @(posedge clk or negedge reset)
    begin
      if (~reset) begin
        count <=5'b0;
      end else if (count ==5'b11110) begin
        count <=5'b0;
      end else begin
        count <=count +2;
      end
    end
endmodule
  
