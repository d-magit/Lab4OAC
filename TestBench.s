.data 
Lugar: .word 0
.text
	addi a1, zero 2
	addi a2, zero -2
	add a0, a1, a2
	bne a0,zero, Erro
	andi a0, a2, 0
	beq a0, zero, OK1
	jal ra, Erro
OK1: 	ori a5, zero,255
	ori a6,a5,0
	bge a6,a5, OK2
	jal ra, Erro
OK2: 	bgeu a6,a5, OK3
	jal ra, Erro
OK3:	addi a1, zero, 2
	addi a2, zero, 1
	sub a3, a1, a2
	blt  a3, a1, OK4
	jal ra, Erro
OK4:	addi a1, zero, 0x2
	and a3, a1, zero
	beq a3, zero, OK5
	jal ra, Erro
OK5:	or a3, a1, zero
	bltu zero, a3, OK6
	jal ra, Erro
OK6:	addi a2,zero, 2
	addi a3, zero, 3
	slt  a1, a2,a3
	sltu a0, a2, a3
	beq a0,a1, OK7
	jal ra, Erro
OK7:	addi a0, zero, 0
	xori a0, zero 0x2
	bne a0, zero, OK8
	jal ra, Erro
OK8:	addi a3, zero, 1
	slti a2, a0, 3
	beq a2, a3, OK9
	jal ra, Erro
OK9:	sltiu a1, a0, -2
	beq a1, a3, OK10
	jal ra, Erro
OK10:	addi a1, zero, 1
	addi a0, zero, 2
	sll a1, a1, a1
	beq a1,a0, OK11
	jal ra, Erro
OK11:   slli a1, a1, 0
	beq a1, a0, OK12
	jal ra, Erro
OK12:	lui a1, 0
	beq a1, zero, OK13
	jal ra, Erro
OK13:	auipc a0, 0xF08A1
	li a1, 0xF0CA10D4
	lui a2, 0x10010
	sw a1, 0(a2)
	lw a3, 0(a2)
	beq a3, a0, OK14
	jal ra, Erro
OK14:	addi a0, zero, 0
	addi a1, zero, 0x2
	xor a0, zero, a1
	bne a0, zero, OK15
	jal ra, Erro
OK15:	jal a0, JALR
JALR:	jalr a1, a0, 4
	addi a1, a1, -4
	beq a0, a1, OK16
	jal ra, Erro
OK16:	li a0, 0xCCCCCCCC
FimS:	jal ra, FimS

Erro: li a0, 0xEEEEEEEE
Fim: jal ra, Fim