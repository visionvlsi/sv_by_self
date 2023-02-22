class my_class;

rand int array1[];
rand int array2[];
rand int array3[];
rand int array4[];

constraint array_range {

array1.size==20;
array2.size==30;
array3.size==10;
array4.size==25;

}

constraint array_elements {

foreach(array1[i]) array1[i] inside {[30:40]};
array2.sum < 100;
}

function void display();
$display("array1_size=%0d array2_size=%0d array3_size=%0d array4_size=%0d",array1.size,array2.size,array3.size,array4.size);
$display("array1 elements are %p",array1);
$display("array3_sum=%0d array2_sum=%0d",array3.sum,array2.sum);
endfunction
endclass

module ex;

my_class ob1;
initial begin

ob1=new();
repeat(10) begin
ob1.randomize();
ob1.display;
end
end


endmodule
