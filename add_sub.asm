.data 
    n1 : .asciiz "input first integer : " 
    n2 : .asciiz "input second integer : " 
    sum : .asciiz "sum : " 
    diff : .asciiz "\ndifference : " 

.text 
    #input message 
    li		$v0 , 4		# $v0 = 
    la      $a0 , n1
    syscall 
    #client input 
    li		$v0 , 5		# $v0  = 5
    syscall 
    move 	$t0, $v0		# $t0 = $v0 
    #input message 
    li      $v0 , 4 
    la      $a0 , n2 
    syscall 
    #client input 
    li		$v0 , 5		# $v0  = 5
    syscall
    move    $t1 , $v0
    #sum message output 
    li      $v0 , 4 
    la      $a0 , sum
    syscall 

    li      $v0 , 1
    add     $a0 , $t0 , $t1
    syscall 

    li      $v0 , 4
    la      $a0 , diff
    syscall

    bgt		$t0, $t1, target	# if $t0 > $t1 then goto target
    sub $a0 , $t1 , $t0
    j out 
    target :
    sub $a0 , $t0 , $t1
    out :
    li      $v0 , 1
    syscall      
    

    li		$v0 , 10		# $v0 = 10 
    syscall