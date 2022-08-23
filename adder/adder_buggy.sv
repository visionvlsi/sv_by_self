//buggy adder  
module my_adder (adder_if _if);
  always_comb begin
  	// Let sum and carry be reset when rstn is 1 instead of 0
  	// A simple but yet possible design bug
    if (_if.rstn) begin
      _if.sum <= 0;
      _if.carry <= 0;
    end else begin
      {_if.carry, _if.sum} <= _if.a + _if.b;
    end
  end
endmodule