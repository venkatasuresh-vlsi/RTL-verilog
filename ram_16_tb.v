module tb;
     reg clk, rst, write_data;
	 reg [15:0] data_in;
	 reg [3:0] address;
	 wire [15:0] data_out;
	 integer  j;
	 
	 ram_16_bit uut(
	     .clk(clk),
		 .rst(rst),
		 .write_data(write_data),
		 .data_in(data_in),
		 .address(address),
		 .data_out(data_out)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("Time=%0t | clk=%b | rst=%b | write_data=%b | data_in=%b | address=%b | data_out=%b",
		 $time, clk, rst, write_data, data_in, address, data_out);
		 rst=1; clk=0; write_data=0; #10;
		 rst=0;
		 write_data=1; #10;
		 data_in=16'h0123;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
		 end
         write_data=0; #10;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
	     end
		 rst=1; #10;
		 rst=0;
		 write_data=1; #10;
		 data_in=16'h4567;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
         end
         write_data=0; #10;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
	     end
		 rst=1; #10;
		 rst=0;
		 write_data=1; #10;
		 data_in=16'h89ab;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
         end
         write_data=0; #10;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
	     end
		 rst=1; #10;
		 rst=0;
		 write_data=1; #10;
		 data_in=16'hcdef;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
         end
         write_data=0; #10;
		 for(j=0; j<2**4; j=j+1)begin
			address=j;
			#10;
	     end
		 $finish;
		end
	endmodule
		 