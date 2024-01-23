`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:40:33 01/13/2024 
// Design Name: 
// Module Name:    machdich 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module machdich(
 input clk,reset,ss,
 input [1:0] mode,
 output reg [7:0] led 
    );
  reg [1:0] TT_led;
  reg a;
  reg b;
  reg i;
  reg t;
  reg s;
initial a = 0;
initial b = 0;
initial i = 0;
initial t = 0;
initial s = 0;

 always @(posedge clk,posedge reset) begin
  if(reset==1'b1)
  begin
  led = 8'h00;
     a = 0;
   b = 0;
     i = 0;
   s = 0;
     t = 0;
  end
  else
  begin
   if(ss==1'b0)
   begin
    if(TT_led!=mode)
     led = 8'h00;
     
    
     else if(mode==2'b10)
     begin
          a = 0;
       b = 0;
       i = 0;
       t = 0;
       if(s == 1)
        led = 8'b00000001;
      else
     
     if(led==8'b00000000)
      led=8'b00010100;
     else
               begin     
     led = led - 1; //PST
      if(led == 8'b00000001)
        s = s +1;
             end
            end 
          

     else if(mode==2'b00)
 
     begin
         a = 0;
       b = 0;
       i = 0;
       s = 0; 
      if( t == 0 )
      begin
      if (led == 8'b00000000)
          led = 8'b00000100;
        else
      begin
       led = (led<<1) + 8'h04;
      if(led == 8'b11111100)
       t = 1;
      end
      end
      else
       begin
             if(led[7:2] == 6'b111111)
        led[7:2] = 6'b011111;
       else
      begin
       led[7:2] = led[7:2] >> 1;
       
       if(led[7:2] == 8'h00)
      begin
       t=0;
      end
      end
      end
     
    end


    else if(mode==2'b01) //TNV
    begin
     a = 0;
     b = 0;
         s = 0;
       t = 0;
     i = 0; 
     if(led==8'b00000000)
      led=8'b11111100;
     else
               begin     //PST
     led = (led<<1) ;
      if(led == 8'h00)
              
                    i = i + 1;
                 
               end 
            end  
            else if(mode==2'b11) //TNV
    begin
     a = 0;
     b = 0;
         s = 0;
       t = 0;
     i = 0;
        
      if (led == 8'hFC)
           led = 8'h00;
        else
        if((led[4:2]==4'b0000)&&(led[7:5]==4'b0000))
        begin
       led[4:2]=3'b001;
       led[7:5]=3'b100;
        end
        else
        begin
                     led[4:2]=(led[4:2]<<1)+3'b001;
       led[7:5]=(led[7:5]>>1)+3'b100;
        end
      end  
   end
   else
    led = led;
   TT_led = mode;
  end
 end
endmodule