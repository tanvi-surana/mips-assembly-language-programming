.data
     prompt: .asciiz "Enter the number: "	
     message: .asciiz "\nYour number multiplied by two is "
     message1: .asciiz "\nlow register is "
     message2: .asciiz "\nhigh register is "
.text

main:
     #prompt user to enter age
     li $v0, 4
     la $a0,prompt
     syscall
     
     li $v0, 5
     syscall

     move $t0, $v0
     addi $t1, $zero, 2	
     mult $t0, $t1	
	
     li $v0, 4
     la $a0, message2
     syscall
	
     	
     mfhi $t0	
     li $v0, 1
     move $a0, $t0
     syscall

     li $v0, 4
     la $a0, message1
     syscall
	
     	
     mflo $t0	
     li $v0, 1
     move $a0, $t0
     syscall

     									
