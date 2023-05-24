.data
    array : .word 1, 2, 3, 4, 5

.text 
main: 
    la $a1 , array
    li $t0 , 1
    li $t1 , 0 
loop: 
    bge $t2 , 5 , exit
    lw $t2 , 0($a1)
    li $v0 , 1
    move $a0 , $t2
    syscall 
    add $t1 , $t1 , $t2 
    addi $a1 , $a1 , 4
    addi $t0 , $t0 , 1
    j loop 
exit:
    li $v0 , 1  
    move $a0 , $t1
    syscall 
    li $v0 , 10
    syscall 
