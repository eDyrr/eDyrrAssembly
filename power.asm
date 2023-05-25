.data 
    x : .asciiz "enter x : " 
    n : .asciiz "enter n : " 
    power : .asciiz "x^n : " 

.text
main: 
    li $v0 , 4 
    la $a0 , x 
    syscall 

    li $v0 , 5 
    syscall 
    move $t0 , $v0 

    li $v0 , 4 
    la $a0 , n
    syscall 

    li $v0 , 5 
    syscall 
    move $t1 , $v0

    li $t2 , 0 #i = 0 
    li $t3 , 1
    loop: 
    bge $t2 , $t1 , exit #test 
    mul $t3 , $t3 , $t0
    addi $t2 , $t2 , 1 #increment 
    j loop 

    exit: 
    li $v0 , 4 
    la $a0 , power 
    syscall 

    li $v0 , 1
    move $a0 , $t3 
    syscall 

    li $v0 , 10 
    syscall 
    
    



