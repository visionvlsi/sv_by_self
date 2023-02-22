class bc;

function void nvm();
$display("bc::nvm");
endfunction:nvm

virtual function void vm();
$display("bc::vm");
endfunction:vm

endclass:bc


class dc extends bc;

function void nvm();
$display("dc::nvm");
endfunction:nvm

virtual function void vm();
$display("dc::vm");
endfunction:vm

endclass:dc

module top;

initial begin

bc bc_h, bch_h;
dc dc_h;

bc_h=new();
dc_h=new();

bch_h=dc_h;

bc_h.nvm();
bc_h.vm();

$display("First print ........");

dc_h.nvm();
dc_h.vm();

$display("Second print ........");

bch_h.nvm();
bch_h.vm();

$display("Third print polymorphism ........");

end

endmodule:top
