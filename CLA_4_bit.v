`timescale 1ns / 1ps
// Four bit Carry lock ahead adder using data flow modeling 
module CLA_4_bit(sum,cout,a,b,cin);
    output [3:0]sum;
    output cout;
    input [3:0]a;
    input [3:0]b;
    input cin;
    
    wire g0,g1,g2,g3,p0,p1,p2,p3,c1,c2,c3,c4;
    
    assign g0=a[0]&b[0],
           g1=a[1]&b[1],
           g2=a[2]&b[2],
           g3=a[3]&b[3];
    
    assign p0=a[0]^b[0],
           p1=a[1]^b[1],
           p2=a[2]^b[2],
           p3=a[3]^b[3];
           
    assign c1=g0|(p0&cin),
           c2=g1|(p1&g0)|(p1&p0&cin),
           c3=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin),
           c4=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&p0&cin);
    
    assign cout=c4;
    
    assign sum[0]=p0^cin,
           sum[1]=p1^c1,
           sum[2]=p2^c2,
           sum[3]=p3^c3;
endmodule
