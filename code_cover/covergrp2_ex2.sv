class packet;
rand bit [3:0]addr;
rand bit [7:0]data;
endclass

module tb2;

packet pkt=new();

covergroup cg;

addr: coverpoint pkt.addr{

bins b1 = {0,1,2,3};
bins b2[]={[3:10]};
bins b3 = {[0:$]};

}

data: coverpoint pkt.data{

bins b1[] = {[0:50]};
bins b2={51,55,60,65,70,75,80};
bins b3[]= {[100:200]};
bins b4[]={[52:255]};

}

endgroup

initial begin
    cg c = new();
    repeat(10) begin
      pkt.randomize();
      $display("addr = %d, data = %d", pkt.addr, pkt.data);
      c.sample();
    end
  end

endmodule
