	.file	1 "simple.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	li	$2,2			# 0x2
	sw	$2,0($fp)
	li	$2,1			# 0x1
	sw	$2,4($fp)
	sw	$0,8($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jrc	$31
	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Codescape GNU Tools 2018.09-03 for MIPS IMG Bare Metal) 6.3.0"
