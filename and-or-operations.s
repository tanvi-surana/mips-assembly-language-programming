.data
     prompt: .asciiz "Enter the number: "	
     message: .asciiz "\n The bitwise and of the numbers is "
     message1: .asciiz "\nThe bitwise or of the numbers is "
     message2: .asciiz "\nhigh register is "
.text

main:
     addi $t1, $zero, 2	
     addi $t1, $zero, 5	
     and $t3, $t1, $t2  
     or $t4, $t1, $t2		
	
     

     									
