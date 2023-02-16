`timescale 1ns / 1ps

module EightBitInverter( // takes an entier 8 bit bus and inverts it 
    
    output [7:0] Out,
    input [7:0] In
    );

    not not0(Out[0], In[0]);
    not not0(Out[1], In[1]);
    not not0(Out[2], In[2]);
    not not0(Out[3], In[3]);

    not not0(Out[4], In[4]);
    not not0(Out[5], In[5]);
    not not0(Out[6], In[6]);
    not not0(Out[7], In[7]);

endmodule
