module Lab3(A,B,C,D,a,b,c,d,e,f,g);
input A,B,C,D;
output reg a,b,c,d,e,f,g;

reg [0:6] Seg7;
reg [3:0] DIG;

always @ (DIG) begin
 case (DIG)
 4'b0000: Seg7 = 7'b0000001;
 4'b0001: Seg7 = 7'b1001111;
 4'b0010: Seg7 = 7'b0010010;
 4'b0011: Seg7 = 7'b0000110;
 4'b0100: Seg7 = 7'b1001100;
 4'b0101: Seg7 = 7'b0100100;
 4'b0110: Seg7 = 7'b0100000;
 4'b0111: Seg7 = 7'b0001111;
 4'b1000: Seg7 = 7'b0000000;
 4'b1001: Seg7 = 7'b0000100;
 default: Seg7 = 7'bxxxxxxx;
 
 endcase
 
 DIG = {A,B,C,D};
 {a,b,c,d,e,f,g} = Seg7;
 end
 endmodule
 