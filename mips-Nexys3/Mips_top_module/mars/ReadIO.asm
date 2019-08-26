main: 	addi $2, $0, 5 
	addi $3, $0, 12
	addi $7, $3, -9 
	or $4, $7, $2 
	and $5, $3, $4 
loop:	add $5, $5, $4
	addi $8, $0, 0x48
	lw  $9, 0($8)
	or $4, $7, $2
	or $4, $7, $2
	or $4, $7, $2
	addi $8, $0, 0x44
	sw $9, 0($8)
	or $4, $7, $2
	or $4, $7, $2
	or $4, $7, $2
	j loop
	 

