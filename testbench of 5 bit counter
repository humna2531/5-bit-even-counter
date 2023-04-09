module even_counter_tb;
  reg clk;
  reg reset;
  wire [4:0]count;
  
  even_counter dut  (
    .clk(clk),
    .reset(reset),
    .count(count)
  );
  
   initial begin
     $dumpfile("dump.vcd");
    $dumpvars(1);
    clk=0;
    reset=1;
  
    #100 reset=0;
    repeat (10) begin
      #10 clk= ~clk;
    end
    #50 reset = 1;

    // Wait for another 100 ns for reset to complete
    #100 reset = 0;

    // Toggle clock for 10 cycles
    repeat(10) begin
      #10 clk = ~clk;
    end
    //finish simulation
    $finish;
  end
endmodule
