	.data
var_a:	.word	10
var_b:	.word	9
	.text
	lw	$s3, var_a
	lw	$t1, var_b
begin:
	addi	$s3, $s3, 0
	addi	$t1, $t1, 99
counter:
	addi	$s3, $s3, 1
	beq	$t1, $s3, begin
	j counter
	
	
