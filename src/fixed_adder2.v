// Fixed Adder

module fixed_adder2 (a, b, sub, sum);
	
	parameter numwidth = 16;
	input [numwidth:0] a, b;
	input sub;
	output [numwidth:0] sum;

	wire sub;
	wire [numwidth:0] a, b;
	wire [numwidth:0] sum;

	assign sum = sub ? ((a[numwidth] != b[numwidth]) ? 
							{a[numwidth], a[numwidth-1:0] + b[numwidth-1:0]} : 
							(((b[numwidth-1:0] > a[numwidth-1:0]) && (a[numwidth] == b[numwidth])) ? 
								{~a[numwidth], ~a[numwidth-1:0] + b[numwidth-1:0] + 1'b1} : 
							(((a[numwidth-1:0] > b[numwidth-1:0]) && (a[numwidth] == b[numwidth])) ? 
								{a[numwidth], a[numwidth-1:0] + ~b[numwidth-1:0] + 1'b1} : 
								0))) : 
						
						(((a[numwidth] == b[numwidth])) ? 
							{a[numwidth], a[numwidth-1:0] + b[numwidth-1:0]} : 
							(((a[numwidth-1:0] > b[numwidth-1:0]) && (a[numwidth] != b[numwidth])) ? 
								{a[numwidth], a[numwidth-1:0] + ~b[numwidth-1:0] + 1'b1} : 
								(((b[numwidth-1:0] > a[numwidth-1:0]) && (a[numwidth] != b[numwidth])) ? 
									{b[numwidth], ~a[numwidth-1:0] + b[numwidth-1:0] + 1'b1} : 
									0)));

endmodule