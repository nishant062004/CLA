`timescale 1ns / 1ps

module CLA_tb();
    reg [3:0]a;
    reg [3:0]b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    
    CLA_4_bit uut(sum,cout,a,b,cin);
    
    initial begin
    $monitor($time,"   a=%b,  b=%b,  cin=%b,  sum=%b ,  cout=%b",a,b,cin,sum,cout);
        a=4'b1100;b=4'b0010;cin=1'b0;#10
        a=4'b0101;b=4'b0010;cin=1'b1;#10 
        a=4'b0101;b=4'b0011;cin=1'b0;#10 
        a=4'b1100;b=4'b0011;cin=1'b1;#10 
        $finish;
    end
endmodule
