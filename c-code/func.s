	.file	1 "func.c"
	.section .mdebug.abi32
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.text
	.align	2
	.globl	suma
	.set	nomips16
	.set	nomicromips
	.ent	suma
	.type	suma, @function
suma:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jrc	$31
	.set	macro
	.set	reorder
	.end	suma
	.size	suma, .-suma
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	li	$2,2			# 0x2
	sw	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,20($fp)
	sw	$0,24($fp)
	lw	$5,20($fp)
	lw	$4,16($fp)
	balc	suma
	sw	$2,24($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jrc	$31
	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Codescape GNU Tools 2018.09-03 for MIPS IMG Bare Metal) 6.3.0"
