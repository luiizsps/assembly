

	.data
val1:	.half   10      # multiplicador
val2:	.half   20      # multiplicando
limite:	.half   16      # número de iterações
n:	.half   1
produto:.word   0

	.text
main:
	la $t1, val1
	la $t2, val2
	lh $a1, 0($t1)
	lh $a2, 0($t2)

	la $t0, limite
	lh $t3, 0($t0)
    
	la $t0, n
	lh $t4, 0($t0)
    
	la $t0, produto
	lw $t5, 0($t0)

mult:
	andi $t6, $a1, 1      # pega o LSB do multiplicador
	beq  $t6, $zero, step_1
	add  $t5, $t5, $a2    # se LSB = 1, soma multiplicando no produto

step_1:
	srl $a1, $a1, 1
	sll $a2, $a2, 1 
	addi $t4, $t4, 1
	bne  $t4, $t3, mult # verifica se foi atingido numero maximo de iterações

end:
	la $t0, produto
	sw $t5, 0($t0)

		 