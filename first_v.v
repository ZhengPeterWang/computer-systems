module assign_example(A, B, Y);
  input A;
  input B;
  output Y;
  assign Y = A & B;
endmodule

/* D flip flop */
module flipFlop(D, CLK, Q);
  input D;
  input CLK;
  output reg Q;
  always @(negedge CLK) begin 
    Q <= D;
  end 
endmodule

/* finite state machine */
module trafficLite(EWCar, NSCar, EWLite, NSLite, clock);
  input EWCar, NSCar, clock;
  output EWLite, NSLite;
  reg state;
  initial state = 0;
  assign NSLite = ~ state;
  assign EWLite = state;
  always @(posedge clock)
  clock edge
    case (state)
      0: state = EWCar;
      1: state = NSCar;
    endcase
endmodule 
