li $t0, 10 # t0 is a constant 10
li $t1, 0 # t1 is our counter (i)
loop:
beq $t1, $t0, end # if t1 == 10 we are done loop body
addi $t1, $t1, 1 # add 1 to t1
j loop # jump back to the top
end:
li $v0,10
   syscall   
