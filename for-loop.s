li $t0, 10
li $t1, 0
li $t1, 17
loop:
beq $t1, $t0, end # if t1 == 10 we are done loop body
add $t2, $t2, $t1
addi $t1, $t1, 1 # add 1 to t1
j loop #jump back to top
end: 
   li $v0,10
   syscall					    
