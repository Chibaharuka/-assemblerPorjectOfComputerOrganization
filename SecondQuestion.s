            .data
buf:        .space 100
f_massage:  .asciiz "\r\nFail!\r\n"
s_massage:  .asciiz "\r\nSuccess! Location:"
newline:    .asciiz "\r\n"
over:       .asciiz "\r\n程序结束"
            .text
            .globl main
main:
            la $a0,buf  #address of input buffer
            la $a1,100  #maximum number og characters to read
            li $v0,8    #read string
            syscall

input:      li $v0, 12  #read character
            syscall
            beq $v0,'?',exit    #Branch to lab if src1 = src2
            add $t1 $0,$0   #use register $s1 to record the location of the character we have found, and initialize it to 0

loop:       lb  $t2, buf($t1)		# 
            beq $t2,'\n',fail       #if we found '\n',we failed.
            beq $v0,$t2,success 
            addi $t1,$t1,1			# $s1 = $s1 + 1
            j	loop				# jump toloop
            
fail:       la  $a0,f_massage
            li  $v0,4
            syscall
            j	input				# jump toinput

success:    la  $a0,s_massage
            li  $v0,4
            syscall
            addi $a0,$t1,1
            li  $v0,1
            syscall
            la $a0,newline
            li $v0, 4		# $v0 = 4
            syscall
            j   input				# jump to    input

exit:       li $v0, 4  
            la $a0, over    #结束时先换行，再输出名字和ID  
            syscall  
            li $v0,10
            syscall