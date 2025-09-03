	.data
var_a:	.word	10
var_b: 	.word	9
var_c: 	.word	0
	.text
	lw	$s1, var_a
	lw 	$s2, var_b
	
	sub 	$t1, $s2, $s1	# $t1 = B - A, se $t1 < 0 -> A > B
	srl	$t1, $t1, 31	# o bit 31 indica o sinal 1 negativo	
	addi	$t2, $zero, 1	# $t2 = 1
	beq	$t1, $t2, salto	# se $t1 == $t2 pula para 'salto'
	addi	$s3, $zero, 20	# $s3 = 10
	j fim
salto:
	addi	$s3, $zero, 20
fim:
	sw	$s3, var_c
	j fim
