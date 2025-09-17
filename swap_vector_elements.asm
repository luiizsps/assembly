	.data
i:	.word   0
end:	.word   16
vec_1:	.word   2,4,6,8,10
vec_2:	.word   0,0,0,0,0

	.text
	lw      $s3, i
	lw      $s4, end
	la      $s6, vec_1
	la      $s7, vec_2 

begin_while:
	add     $t6, $s6, $s4 
	add     $t7, $s7, $s3 

	lw      $t0, 0($t6) 

	sw      $t0, 0($t7)

	beq     $s4, $zero, end_while
	addi    $s3, $s3, 4
	subi	$s4, $s4, 4
	j       begin_while

end_while:
