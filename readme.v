module test(
	input		sysclk,
	input		sys_rst,
	output		oled
);
reg	[7:0]	cnt;
always@(posedge sysclk or negeddge ) begin 
	if(!sys_clk) cnt <= 8'd0;
	if(cnt < 8'hff) cnt <= cnt + 1'd1;
	else cnt <= 8'd0;
end 
endmodule 

