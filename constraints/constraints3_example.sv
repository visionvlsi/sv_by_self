class myClass;
		rand bit [3:0] val;
		constraint  c1 { val > 3;
		                 val < 12; } constraint c2 {val >= 10; }
	endclass
	
	module tb;
		initial begin
			for (int i = 0; i < 10; i++) begin
				myClass cls = new ();
				cls.randomize();
				$display ("itr=%0d typ=%0d", i, cls.val);
			end
		end
	endmodule	
