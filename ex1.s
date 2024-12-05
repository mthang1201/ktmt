.section .data
msg: .asciz "Result is %d\n"
a: .long 6
b: .long 7
c: .long 8

.section .text
.globl _start
_start:
 mov a, %eax
 add b, %eax
 mov %eax, c

 mov c, %rsi
 lea msg, %rdi
 mov $0, %rax
 call printf

 mov $0, %edi
 call exit
 