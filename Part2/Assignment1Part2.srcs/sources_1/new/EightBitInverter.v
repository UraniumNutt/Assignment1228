`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

// takes an entire 8 bit bus and inverts it 
module EightBitInverter( 
    
    output [7:0] Out,
    input [7:0] In
    );

    not not0(Out[0], In[0]);
    not not1(Out[1], In[1]);
    not not2(Out[2], In[2]);
    not not3(Out[3], In[3]);
    not not4(Out[4], In[4]);
    not not5(Out[5], In[5]);
    not not6(Out[6], In[6]);
    not not7(Out[7], In[7]);

endmodule
