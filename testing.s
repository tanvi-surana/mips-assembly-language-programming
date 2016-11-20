#    PROGRAM TO ADD TWO NUMBERS 
#    Text segment 
#               (all programs start with the next 3 lines) 
        .text           #directive identifying the start of instructions 
        .globl  __start

__start:

# -------------  print prompt on "console" -------------------- 
        la      $a0, prompt     # address of prompt goes in 
        li      $v0, 4          # service code for print string 
        syscall

# -------------  read in the integer -------------------------- 
        li      $v0, 5          # service code 
        syscall 
        sw      $v0, Num1       # store what was entered 
# -------------- read another 
        li      $v0, 5          # service code 
        syscall 
        sw      $v0, Num2       # store what was entered

# ------ Perfrom the addition, $a0 := Num1 + Num2 
        lw      $t0, Num1 
        add     $a0, $t0, $v0

# ------ print the sum, it is in $a0 
        li      $v0, 1          # print integer service call 
        syscall

# ------ print a final string identifying the result, and ending with a new line 
        la      $a0, final 
        li      $v0, 4 
        syscall

        li      $v0, 10         # exit program service 
        syscall

#------------------------------------------------------------------ 
#       Data segment 
#------------------------------------------------------------------ 
        .data 
Num1:   .word   0 
Num2:   .word   0 
prompt: .ascii  "Please type 2 integers, end each with the " 
        .asciiz "Enter key:\n" 
final:  .asciiz " is the sum.\n"
