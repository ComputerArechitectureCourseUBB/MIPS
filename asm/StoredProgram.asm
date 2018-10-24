#   MIPS stored programm
	addi $t0, $s3, -12
	lw $t2, 32($0)
	add $s0, $s1, $s2
	sub $t0, $t3, $t5

	li	$v0, 10		# system call code for exit = 10
	syscall	