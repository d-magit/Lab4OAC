.text
	auipc a0, 0xF08A1
	lui a1, 0xF0CA1
	lui a2, 0x10010
	sw a1, 0(a2)
	lw a3, 0(a2)
	beq a3, a0, OK14
	jal ra, Erro
OK14: 	li a0, 0xCCCCCCCC
FimS:	jal ra, FimS

Erro: li a0, 0xEEEEEEEE
Fim: jal ra, Fim