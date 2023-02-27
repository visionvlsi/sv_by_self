// Code your testbench here
// or browse Examples
typedef enum {FALSE, TRUE} e_bool;

class Packet extends uvm_object;
  rand bit[15:0] 	m_addr;
  
  // Automation macros
  `uvm_object_utils_begin(Packet)
  	`uvm_field_int(m_addr, UVM_DEFAULT)
  `uvm_object_utils_end
  
  function new(string name = "Packet");
    super.new(name);
  endfunction
endclass

class Object extends uvm_object;
  rand e_bool 				m_bool;
  rand bit[3:0] 			m_mode;
  rand byte 				m_data[4];
  rand shortint 			m_queue[$];
  string 					m_name;
  rand Packet 				m_pkt;
  
  constraint c_queue { m_queue.size() == 3; }
  
  function new(string name = "Object");
    super.new(name);
    m_name = name;
    m_pkt = Packet::type_id::create("m_pkt");
    m_pkt.randomize();
  endfunction
  
  `uvm_object_utils_begin(Object)
  	`uvm_field_enum(e_bool, m_bool, UVM_DEFAULT)
  	`uvm_field_int (m_mode, 		UVM_DEFAULT)
  	`uvm_field_sarray_int(m_data, 	UVM_DEFAULT)
  	`uvm_field_queue_int(m_queue, 	UVM_DEFAULT)
  	`uvm_field_string(m_name, 		UVM_DEFAULT)
  	`uvm_field_object(m_pkt, 		UVM_DEFAULT)
  `uvm_object_utils_end
endclass

class base_test extends uvm_test;
  `uvm_component_utils(base_test)
  function new(string name = "base_test", uvm_component parent=null);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    Object obj1 = Object::type_id::create("obj1");
    Object obj2 = Object::type_id::create("obj2");
    obj1.randomize();
    obj1.print();
    obj2.randomize();
   	obj2.print();
    
    obj2.copy(obj1);
    `uvm_info("TEST", "After copy", UVM_LOW)
    obj2.print();
  endfunction
endclass

module tb;
	initial begin
		run_test("base_test");
	end
endmodule
