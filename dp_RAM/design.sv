module dp_mem (clk,rst,enb,wr,rd,w_addr,r_addr,w_data,r_data);

  input clk,rst,enb,wr,rd;
  input [4:0] w_addr,r_addr;
  input [7:0] w_data;
  
  output reg [7:0] r_data;
  
  integer i;
  
  reg [7:0] mem [15:0];
  
  always@(posedge clk)
    begin
      if(!rst)
        begin
          for(i=0;i<16;i=i+1)
            begin
              mem[i]<=8'bx;
            end
        end
      else
        begin
          if(enb)
            begin
              if(wr==1 && rd==0)
                 begin
                   mem[w_addr]<=w_data;
                 end
              else if (wr==0 && rd==1)
                begin
                  r_data<=mem[r_addr];
                end
              else if (wr==1 && rd==1)
                begin
                  mem[w_addr]<=w_data;
                  r_data<=mem[r_addr];
                end
              else
                begin
                  for(i=0;i<16;i=i+1)
                    begin
                      mem[i]<=mem[i];
                    end
                end
            end
          else
            begin
              for(i=0;i<16;i=i+1)
                    begin
                      mem[i]<=mem[i];
                    end
            end
        end
    end
  
  
endmodule
