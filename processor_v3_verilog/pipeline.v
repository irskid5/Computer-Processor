// ---------------------------------------------------------------------
// Copyright (c) 2007 by University of Toronto ECE 243 development team 
// ---------------------------------------------------------------------
//
// Major Functions:	control processor's datapath
// 
// Input(s):	1. instr: input is used to determine states
//				2. N: if branches, input is used to determine if
//					  negative condition is true
//				3. Z: if branches, input is used to determine if 
//					  zero condition is true
//
// Output(s):	control signals
//
//				** More detail can be found on the course note under
//				   "Multi-Cycle Implementation: The Control Unit"
//
// ---------------------------------------------------------------------
module pipeline
(
reset, ir2, ir3, ir4, clock,
N, Z,
PCSel, MemRead, MemWrite, R1Sel, RwSel, ALUsel,
RFWrite, FlagWrite, R1B, R2B, branchctrl,
ALU1, ALU2, ALUop
);
	input	[7:0] ir2, ir3, ir4;
	input	N, Z;
	input	reset, clock;
	output	PCSel, MemRead, MemWrite, R1Sel, RwSel, ALUsel;
	output	RFWrite, FlagWrite, R1B, R2B, branchctrl;
	output	[1:0] ALU1;
	output	[2:0] ALU2, ALUop;
	
	reg	[1:0] ALU1;
	reg	PCSel, MemRead, MemWrite, R1Sel, RwSel, ALUsel;
	reg	RFWrite, RegIn, FlagWrite, R1B, R2B, branchctrl;
	reg	[2:0] ALU2, ALUop;
	
	parameter [3:0] addop = 4'b0100;
	parameter [3:0] subop = 4'b0110;
	parameter [3:0] nandop = 4'b1000;
	parameter [3:0] shiftop = 4'b0011;
	parameter [3:0] orop = 4'b0111;
	parameter [3:0] ldrop = 4'b0000;
	parameter [3:0] strop = 4'b0010;
	parameter [3:0] bzop = 4'b0101;
	parameter [3:0] bpzop = 4'b1101;
	parameter [3:0] bnzop = 4'b1001;
	parameter [3:0] nop = 4'b1010;
	
	always@(posedge clock or posedge reset)
	begin
		if (reset) begin
			R1Sel <= 0;
			R1B <= 1;
			R2B <= 1;
			PCSel <= 1;
			ALU1 <= 2'b10;
			ALU2 <= 0;
			ALUop <= 0;
			ALUsel <= 0;
			MemRead <= 0;
			MemWrite <= 0;
			FlagWrite <= 0;
			branchctrl <= 1;
			RwSel <= 1;
			RFWrite <= 0;
		end
		else begin
			case (ir2[3:0])
				 addop: begin
							R1Sel <= 0;
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				subop: begin
							R1Sel <= 0;
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				nandop: begin
							R1Sel <= 0;	
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				shiftop, 4'b1011: begin
							R1Sel <= 0;
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				orop, 4'b1111: begin
							R1Sel <= 1;
							R2B <= 1;
							if (ir4[2:0] == 3'b111) R1B <= 0;
							else if (ir4[7:6] == 2'b01) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
							end
							else R1B <= 1;
						end
				ldrop: begin
							R1Sel <= 0;
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				strop: begin
							R1Sel <= 0;
							if (ir4[2:0] == 3'b111) begin //if orop
								if (ir2[7:6] == 2'b01) begin //if 
									R1B <= 0;
								end
								else R1B <= 1;
								if (ir2[5:4] == 2'b01) begin
									R2B <= 0;
								end
								else R2B <= 1;
							end
							else begin 
								if (ir4[7:6] == ir2[7:6]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin 
										R1B <= 0; end
									else R1B <= 1;
								end
								else R1B <= 1;
								if (ir4[7:6] == ir2[5:4]) begin
									if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) begin
										R2B <= 0; end
									else R2B <= 1;
								end
								else R2B <= 1;
							end
						end
				default: begin
							R1Sel <= 0;
							R1B <= 1;
							R2B <= 1;
						end
			endcase

		case (ir3[3:0]) 
			
			addop: begin
						ALUop <= 3'b000; //add
						FlagWrite <= 1;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == ir3[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[5:4] == 2'b01) ALU2 <= 3'b111;
							else ALU2 <= 0;
						end
						else if (ir3[5:4] == ir4[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU2 <= 3'b111;
							else ALU2 <= 0; 
						end
						else ALU2 <= 0;							
					
					end
			subop: begin
						ALUop <= 3'b001;
						FlagWrite <= 1;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == ir3[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[5:4] == 2'b01) ALU2 <= 3'b111;
							else ALU2 <= 0;
						end
						else if (ir3[5:4] == ir4[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU2 <= 3'b111;
							else ALU2 <= 0; 
						end
						else ALU2 <= 0;		
					end
			nandop: begin
						ALUop <= 3'b011;
						FlagWrite <= 1;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == ir3[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[5:4] == 2'b01) ALU2 <= 3'b111;
							else ALU2 <= 0;
						end
						else if (ir3[5:4] == ir4[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU2 <= 3'b111;
							else ALU2 <= 0; 
						end
						else ALU2 <= 0;	
					end
			shiftop, 4'b1011: begin
						ALUop <= 3'b100;
						FlagWrite <= 1;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						ALU2 <= 3'b011;
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == ir3[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
					end
			orop, 4'b1111: begin
						ALUop <= 3'b010;
						FlagWrite <= 1;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						ALU2 <= 3'b010;
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == 2'b01) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
					end
			ldrop: begin
						ALUop <= 3'b000;
						FlagWrite <= 1;
						MemRead <= 1;
						MemWrite <= 0;
						ALUsel <= 1;
						PCSel <= 1;
						branchctrl <= 1;
						ALU1 <= 2'b10;
						if (ir4[2:0] == 3'b111) begin
							if (ir3[5:4] == 2'b01) ALU2 <= 3'b111;
							else ALU2 <= 0;
						end
						else if (ir3[5:4] == ir4[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU2 <= 3'b111;
							else ALU2 <= 0; 
						end
						else ALU2 <= 0;
					end
			strop: begin
						ALUop <= 3'b000;
						FlagWrite <= 0;
						MemRead <= 0;
						MemWrite <= 1;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[7:6] == 2'b01) ALU1 <= 0;
							else ALU1 <= 2'b10;
						end
						else if (ir4[7:6] == ir3[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU1 <= 0;
							else ALU1 <= 2'b10; 
						end
						else ALU1 <= 2'b10;
						
						if (ir4[2:0] == 3'b111) begin
							if (ir3[5:4] == 2'b01) ALU2 <= 3'b111;
							else ALU2 <= 0;
						end
						else if (ir3[5:4] == ir4[7:6]) begin
							if ((ir4[3:0] == addop) | (ir4[3:0] == subop) | (ir4[3:0] == nandop) | (ir4[2:0] == 3'b011) | (ir4[3:0] == ldrop)) ALU2 <= 3'b111;
							else ALU2 <= 0; 
						end
						else ALU2 <= 0;
					end
			bzop: begin
						ALUop <= 3'b000;
						FlagWrite <= 0;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						if (Z) branchctrl <= 0;
						else branchctrl <= 1;
						ALU1 <= 2'b01;
						ALU2 <= 3'b001;
						if (Z) PCSel <= 0;
						else PCSel <= 1;
					end
			bpzop: begin
						ALUop <= 3'b000;
						FlagWrite <= 0;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						if (~N) branchctrl <= 0;
						else branchctrl <= 1;
						ALU1 <= 2'b01;
						ALU2 <= 3'b001;
						if (~N) PCSel <= 0;
						else PCSel <= 1;
					end
			bnzop: begin
						ALUop <= 3'b000;
						FlagWrite <= 0;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						if (~Z) branchctrl <= 0;
						else branchctrl <= 1;
						ALU1 <= 2'b01;
						ALU2 <= 3'b001;
						if (~Z) PCSel <= 0;
						else PCSel <= 1;
					end
			default: begin
						ALUop <= 3'b000; //add
						FlagWrite <= 0;
						MemRead <= 0;
						MemWrite <= 0;
						ALUsel <= 0;
						PCSel <= 1;
						branchctrl <= 1;
						ALU1 <= 2'b10;
						ALU2 <= 0;
					end
			endcase

		case (ir4[3:0])
			addop: begin
						RFWrite <= 1; 
						RwSel <= 1;	
					end
			subop: begin
						RFWrite <= 1; 
						RwSel <= 1;
					end
			nandop: begin
						RFWrite <= 1; 
						RwSel <= 1;
					end
			shiftop, 4'b1011: begin
						RFWrite <= 1; 
						RwSel <= 1;
					end
			orop, 4'b1111: begin
						RFWrite <= 1; 
						RwSel <= 0;
					end
			ldrop: begin
						RFWrite <= 1; 
						RwSel <= 1;
					end
					
			default: begin
						RFWrite <= 0;
						RwSel <= 1;
					end
		endcase
		end
	end

endmodule