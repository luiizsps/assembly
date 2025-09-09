# swapping the values of two vectors
	.data
i:	.word	0
limiter:.word	16
vec_1:	.word	2,4,6,8,10	
vec_2:	.word	1,3,5,7,9
	
	.text
	lw	$s3, i
	lw	$s4, limiter # tells our loop when to stop
	addi	$s6, $at, 8
	addi	$s7, $at, 28

begin_while:
	add	$t6, $s6, $s3 	# End vec_1 + i
	add	$t7, $s7, $s3	# End vec_2 + i
	
	# load words
	lw	$t0, 0($t6) 
	lw	$t1, 0($t7)
	
	# store words swapping places
	sw	$t0, 0($t7)
	sw	$t1, 0($t6)
	
	beq	$s3, $s4, end_while
	addi	$s3, $s3, 4	# $s3= $s3 + 4
	j	begin_while

end_while:
