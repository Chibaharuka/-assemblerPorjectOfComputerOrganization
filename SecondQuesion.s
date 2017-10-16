            .data
buf         .space 100
f_massage:  .asciiz "\r\nFail!!!\r\n"
s_massage:  .asciiz "\r\nSuccess!!! Location:"
n:          .asciiz "\r\n"

            .txt
            .globl main
main:
            la $a0,buf  #address of input buffer
            la $a1,100  #maximum number og characters to read
            li $v0,8    #read string
            syscall

input:      li $v0, 12  #read character
            syscall
            beq $v0,'?',exit    #Branch to lab if src1 = src2
            add $s1 $0,$0   #use register $s1 to record the location of the character we have found, and initialize it to 0

loop:       lb  $t1, buf($s1)		# 
            beq $t2,'\n',fail       #if we found '\n',we failed.
            beq $v0,$t1,success 
            addi $s1,$s1,1			# $s1 = $s1 + 1
            j	loop				# jump toloop
            
fail:       la  $a0,f_massage
            li  $v0,4
            syscall
            j	input				# jump toinput

success:    la  $a0,s_massage
            li  $v0,4
            syscall
            add $a0,$s1,$0
            li  $v0,1
            syscall
            j   input				# jump to    input

exit:       li $v0,10
            syscall