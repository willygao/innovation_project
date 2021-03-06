module seg_disp
(
	input KEY0, KEY1, KEY2, KEY3, 
	input [6:0] SW,
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6,
	output [0:9] LEDR
);
	
	//seq_num,
	//freq_num,
	//rom_addr
	
	bcd_conv seq(SW[6:0], HEX0, HEX1);
	//tie the rest of the 7 segs to the ground for now
	HEX2 = 7'b111_1111;
	HEX3 = 7'b111_1111;
	HEX4 = 7'b111_1111;
	HEX5 = 7'b111_1111;
	HEX6 = 7'b111_1111;

endmodule
