.data
    input : .asciiz "input  integer : " 
    odd : .asciiz " is odd." 
    even : .asciiz " is even." 

.text

    li $v0 , 4
    la $a0 , input
    syscall 

    li $v0 , 5
    syscall
    addi $t0 , $v0 , 0

    li $t2 , 2

    div $t0 , $t2
    mfhi $t1 

    beq $t1 , $0 , is_even	
    li $v0 , 1 
    move $a0 , $t0
    syscall
    li $v0 , 4
    la $a0 , odd
    syscall
    j exit 
    is_even:
    li $v0 , 1 
    move $a0 , $t0
    syscall
    li $v0 , 4
    la $a0 , even
    syscall
    j exit
exit: 
    li $v0 , 10
    syscall

    


    