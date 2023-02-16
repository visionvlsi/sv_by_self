module top;
  
  initial begin
    #1 $display("[%0t] Sky is blue",$time);
    fork
      #5 $display("[%0t] Night is dark",$time);
      begin
        #2 $display("[%0t] Sun is warm",$time);
        #4 $display("[%0t] Monkey is an Animal",$time);
      end
      #10 $display("[%0t] Dewali is a festival",$time);      
    join
    $display("[%0t] Fun in a beach",$time);
  end
endmodule
