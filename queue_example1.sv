module queue_example;
  // declaration
  string animal_q[$];
    
  initial begin
    $display("Initial Size: animal_q = %0d", animal_q.size());
    
    animal_q = {"TIGER","LION"};
    $display("Size: animal_q = %0d", animal_q.size());
    $display("-----------------------");
    
    animal_q.insert(1, "ELEPHANT");
    animal_q.insert(3, "FOX");
    animal_q.insert(4, "ZEBRA");
    $display("Size: animal_q = %0d", animal_q.size());
    
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    
    $display("--- Access queue item ---");
    $display("The second element of animal_q = %s", animal_q[2]);
    $display("The fourth element of animal_q = %s", animal_q[4]);
    $display("-----------------------");
    
    $display("--- Delete queue item ---");
    animal_q.delete(2);
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    
    $display("--- Delete complete queue ---");
    animal_q.delete();
    $display("Size after queue deletion: animal_q size = %0d", animal_q.size());
    $display("-----------------------");
    
    
    animal_q = {"TIGER","LION"};
    
    $display("--- push_back methods ---");
    animal_q.push_back("ELEPHANT");
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    
    $display("--- push_front methods ---");
    animal_q.push_front("FOX");
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
 
    $display("--- pop_back methods ---");
    animal_q.pop_back();
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
    
    $display("--- pop_front methods ---");
    animal_q.pop_front();
    foreach(animal_q[i]) $display("animal_q[%0d] = %s", i, animal_q[i]);
    $display("-----------------------");
  end
endmodule
