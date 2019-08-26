main: 	addi $2, $0, 5 
	addi $3, $0, 12
	addi $7, $3, -9 
	or $4, $7, $2 
	and $5, $3, $4 
	add $5, $5, $4
	lui $8, 0xFFFF
	ori $8, $8, 0x0004
	lw  $9, 0($8)
	or $4, $7, $2
	 

