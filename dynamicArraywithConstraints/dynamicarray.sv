/*
Q1: Write a program using dynamic array

array1 : No. of elements should be 20, elements must be between 30-40
array2 : sum of all elements should be<100
array3 : sum of all elements >100
array4 : size of the array should not be same as array1,array2, array3
*/

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
							array2.sum<100;
							array3.sum>100;
							
							}
							
function void display();

$display("array1 size=%0d array2 size=%0d array3 size=%0d array4 size=%0d", array1.size,array2.size,array3.size,array4.size);
$display("array1 elements are %p", array1);
$display("array2 sum=%0d array3 sum=%0d",array2.sum,array3.sum);
endfunction

endclass

module dynamicarray;

my_class h1;

initial begin
h1=new();
repeat(10)
begin
h1.randomize();
h1.display();
end

end



endmodule