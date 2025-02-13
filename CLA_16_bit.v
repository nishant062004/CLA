`timescale 1ns / 1ps

module CLA_16_bit(Sum,Cout,A,B,Cin);
    output [15:0]Sum;
    output Cout;
    input [15:0]A;
    input [15:0]B;
    input Cin;
    
    wire cout1,cout2,cout3;
    
    CLA_4_bit CLA1(Sum[3:0],cout1,A[3:0],B[3:0],Cin);
    CLA_4_bit CLA2(Sum[7:4],cout2,A[7:4],B[7:4],cout1);
    CLA_4_bit CLA3(Sum[11:8],cout3,A[11:8],B[11:8],cout2);
    CLA_4_bit CLA4(Sum[15:12],Cout,A[15:12],B[15:12],cout3);
endmodule
