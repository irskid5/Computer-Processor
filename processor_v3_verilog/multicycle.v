// ---------------------------------------------------------------------
// Copyright (c) 2007 by University of Toronto ECE 243 development team 
// ---------------------------------------------------------------------
//
// Major Functions:	a simple processor which operates basic mathematical
//					operations as follow:
//					(1)loading, (2)storing, (3)adding, (4)subtracting,
//					(5)shifting, (6)oring, (7)branch if zero,
//					(8)branch if not zero, (9)branch if positive zero
//					 
// Input(s):		1. KEY0(reset): clear all values from registers,
//									reset flags condition, and reset
//									control FSM
//					2. KEY1(clock): manual clock controls FSM and all
//									synchronous components at every
//									positive clock edge
//
//
// Output(s):		1. HEX Display: display registers value K3 to K1
//									in hexadecimal format
//
//					** For more details, please refer to the document
//					   provided with this implementation
//
// ---------------------------------------------------------------------

module multicycle
(
SW, KEY, HEX0, HEX1, HEX2, HEX3,
HEX4, HEX5, 
LEDR
);

// ------------------------ PORT declaration ------------------------ //
input	[1:0] KEY;
input [4:0] SW;
output	[6:0] HEX0, HEX1, HEX2, HEX3;
output	[6:0] HEX4, HEX5;
output reg [17:0] LEDR;

// ------------------------- Registers/Wires ------------------------ //
wire	clock, reset;
wire	MemRead, MemWrite, PCWrite, ALUsel;
wire	S1Ld, S2Ld, S3Ld, IR4ld, RwSel, PCSel;
wire	FlagWrite, R1Sel, RFWrite;
wire	[7:0] R2wire, PCwire, R1wire, RFout1wire, RFout2wire, PCselwire;
wire	[7:0] ALU1wire, ALU2wire, ALUwire, ALUOut, MEMwire, IRwire;
wire	[7:0] IR_reg1, IR_reg2, IR_reg3, IR_reg4, SE4wire, ZE5wire, ZE3wire;
wire	[7:0] reg0, reg1, reg2, reg3, R1BOut, R2BOut, IR1muxout, IR2muxout, IR3muxout;
wire	[7:0] constant, PCadd, PC1wire, PC2wire, PC3wire, ALUselwire, var1, var2, var3, var4, var5;
wire	[2:0] ALUOp, ALU2, Regw_in;
wire	[1:0] R1_in, ALU1;
wire	Nwire, Zwire;
reg		N, Z;
wire		[13:0] pHEX, rHEX;
reg		[15:0] p_counter, d_counter;

// ------------------------ Input Assignment ------------------------ //
assign	clock = KEY[1];
assign	reset =  ~KEY[0]; // KEY is active high
assign S1Ld = 1;
assign S2Ld = 1;
assign S3Ld = 1; 
assign IR4ld = 1;


/*
// ------------------- DE2 compatible HEX display ------------------- //
HEXs	HEX_display(
	.in0(reg0),.in1(reg1),.in2(reg2),.in3(reg3),.selH(SW[0]),
	.out0(HEX0),.out1(HEX1),.out2(HEX2),.out3(HEX3),
	.out4(HEX4),.out5(HEX5)
);
// ----------------- END DE2 compatible HEX display ----------------- //
*/


// ------------------- DE1 compatible HEX display ------------------- //
chooseHEXs	HEX_display(
	.in0(reg0),.in1(reg1),.in2(reg2),.in3(reg3),
	.out0(rHEX[6:0]),.out1(rHEX[13:7]),.select(SW[1:0])
);
/*
// turn other HEX display off
assign HEX2 = 7'b1111111;
assign HEX3 = 7'b1111111;
assign HEX4 = 7'b1111111;
assign HEX5 = 7'b1111111;
assign HEX6 = 7'b1111111;
assign HEX7 = 7'b1111111;
*/
// ----------------- END DE1 compatible HEX display ----------------- //


// ------------------------ DE1 HEX displays ------------------------ //
HEX hex5(1'hF, HEX5);
HEX hex4(1'hF, HEX4);
HEX hex3(d_counter[15:12], HEX3);
HEX hex2(d_counter[11:8], HEX2);
HEX hex1(d_counter[7:4], pHEX[13:7]);
HEX hex0(d_counter[3:0], pHEX[6:0]);

// ----------------------- END DE1 HEX displays --------------------- //

assign HEX1 = (SW[2]) ? pHEX[13:7] : rHEX[13:7];
assign HEX0 = (SW[2]) ? pHEX[6:0] : rHEX[6:0];



pipeline	Control(
	.reset(reset),.clock(clock),.N(Nwire),.Z(Zwire),.ir2(IR2muxout),.ir3(IR_reg2),.ir4(IR_reg3), 
	.MemRead(MemRead),.MemWrite(MemWrite),
	.R1Sel(R1Sel),.RwSel(RwSel),.PCSel(PCSel),.ALUsel(ALUsel),
	.ALU1(ALU1),.RFWrite(RFWrite),.R1B(R1B),.R2B(R2B),.branchctrl(branchctrl),
	.FlagWrite(FlagWrite),.ALU2(ALU2),.ALUop(ALUOp)
);

memory	imDataMem(
	.clock(clock), .MemRead(1), .wren(0),
	.address(var1), .address_pc(PCwire), .data(var2), 
	.q(var3), .q_pc(IRwire)
);

memory	DataMem(
	.clock(clock), .MemRead(MemRead), .wren(MemWrite),
	.address(ALU2wire), .address_pc(var4), .data(R1wire), 
	.q(MEMwire), .q_pc(var5)
);

ALU		ALU(
	.in1(ALU1wire),.in2(ALU2wire),.out(ALUwire),
	.ALUOp(ALUOp),.N(Nwire),.Z(Zwire)
);

RF		RF_block(
	.clock(clock),.reset(reset),.RFWrite(RFWrite),
	.dataw(ALUOut),.reg1(R1_in),.reg2(IR_reg2[5:4]),
	.regw(Regw_in),.data1(RFout1wire),.data2(RFout2wire),
	.r0(reg0),.r1(reg1),.r2(reg2),.r3(reg3)
);

//IR Registers



ir	IR_reg1reg(
	.clock(clock),.aclr(reset),.enable(S1Ld),
	.data(IR1muxout),.q(IR_reg1)
);

ir	IR_reg2reg(
	.clock(clock),.aclr(reset),.enable(S2Ld),
	.data(IR2muxout),.q(IR_reg2)
);

ir	IR_reg3reg(
	.clock(clock),.aclr(reset),.enable(S3Ld),
	.data(IR3muxout),.q(IR_reg3)
);

ir	IR_reg4reg(
	.clock(clock),.aclr(reset),.enable(IR4ld),
	.data(IR_reg3),.q(IR_reg4)
);

register_8bit	PCreg(
	.clock(clock),.aclr(reset),.enable(PCWrite),
	.data(PCselwire),.q(PCwire)
);

register_8bit	PC1reg(
	.clock(clock),.aclr(reset),.enable(S1Ld),
	.data(PCselwire),.q(PC1wire)
);

adder add(.clk(clock),.in(PCwire),.out(PCadd));

assign PCWrite = 1;

register_8bit	PC2reg(
	.clock(clock),.aclr(reset),.enable(PCWrite),
	.data(PC1wire),.q(PC2wire)
);

register_8bit	PC3reg(
	.clock(clock),.aclr(reset),.enable(PCWrite),
	.data(PC2wire),.q(PC3wire)
);

register_8bit	R1(
	.clock(clock),.aclr(reset),.enable(S3Ld),
	.data(R1BOut),.q(R1wire)
);

register_8bit	R2(
	.clock(clock),.aclr(reset),.enable(S3Ld),
	.data(R2BOut),.q(R2wire)
);

register_8bit	ALUOut_reg(
	.clock(clock),.aclr(reset),.enable(IR4ld),
	.data(ALUselwire),.q(ALUOut)
);

mux2to1_8bit 		PCsel_mux(
	.data0x(ALUwire),.data1x(PCadd),
	.sel(PCSel),.result(PCselwire)
);

mux2to1_8bit 		IR1_mux(
	.data0x(8'b00001010),.data1x(IRwire),
	.sel(branchctrl),.result(IR1muxout)
);

mux2to1_8bit 		IR2_mux(
	.data0x(8'b00001010),.data1x(IR_reg1),
	.sel(branchctrl),.result(IR2muxout)
);

mux2to1_8bit 		IR3_mux(
	.data0x(8'b00001010),.data1x(IR_reg2),
	.sel(branchctrl),.result(IR3muxout)
);

mux2to1_2bit		R1Sel_mux(
	.data0x(IR_reg2[7:6]),.data1x(constant[1:0]),
	.sel(R1Sel),.result(R1_in)
);

mux2to1_2bit		Regw_mux(
	.data0x(constant[1:0]),.data1x(IR_reg4[7:6]),
	.sel(RwSel),.result(Regw_in)
);

mux2to1_8bit 		R1B_mux(
	.data0x(ALUOut),.data1x(RFout1wire),
	.sel(R1B),.result(R1BOut)
);

mux2to1_8bit 		R2B_mux(
	.data0x(ALUOut),.data1x(RFout2wire),
	.sel(R2B),.result(R2BOut)
);

mux2to1_8bit 		ALUsel_mux(
	.data0x(ALUwire),.data1x(MEMwire),
	.sel(ALUsel),.result(ALUselwire)
);

mux3to1_8bit 		ALU1_mux(
	.data0x(ALUOut),.data1x(PC3wire),.data2x(R1wire),
	.sel(ALU1),.result(ALU1wire)
);

mux5to1_8bit 		ALU2_mux(
	.data0x(R2wire),.data1x(ALUOut),.data2x(SE4wire),
	.data3x(ZE5wire),.data4x(ZE3wire),.sel(ALU2),.result(ALU2wire)
);

sExtend		SE4(.in(IR_reg3[7:4]),.out(SE4wire));
zExtend		ZE3(.in(IR_reg3[5:3]),.out(ZE3wire));
zExtend		ZE5(.in(IR_reg3[7:3]),.out(ZE5wire));
// define parameter for the data size to be extended
defparam	SE4.n = 4;
defparam	ZE3.n = 3;
defparam	ZE5.n = 5;

always@(posedge clock or posedge reset)
begin
if (reset)
	begin
	N <= 0;
	Z <= 0;
	end
else
if (FlagWrite)
	begin
	N <= Nwire;
	Z <= Zwire;
	end
end

// ------------------------ Assign Constant 1 ----------------------- //
assign	constant = 1;

// ------------------------- LEDs Indicator ------------------------- //
always @ (*)
begin

    case({SW[4],SW[3]})
    2'b00:
    begin
      LEDR[9] = PCSel;
      LEDR[8] = PCWrite;
      LEDR[7] = branchctrl;
      LEDR[6] = R1Sel;
      LEDR[5] = RwSel;
      LEDR[4] = RFWrite;
      LEDR[3] = R1B;
      LEDR[2] = R2B;
      LEDR[1] = MemRead;
      LEDR[0] = MemWrite;
    end

    2'b01:
    begin
      //LEDR[9] = ALU1;
      LEDR[8:6] = ALU2[2:0];
      LEDR[5:3] = ALUOp[2:0];
      LEDR[2] = ALUsel;
      LEDR[1] = Z;
      LEDR[0] = N;
    end

    2'b10:
    begin
      LEDR[7:0] = IR_reg3;
    end

    2'b11:
    begin
      LEDR[7:0] = IR_reg4;
    end
  endcase
end

/* Performance Counter */
always @ (posedge clock or posedge reset ) begin
	if (reset) p_counter = 0;
	else if(IR_reg3[3:0] != 4'b0001) p_counter = p_counter + 1;
end

always @ (SW[2]) d_counter = p_counter;

endmodule
