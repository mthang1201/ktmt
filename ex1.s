.section .data
msg: .asciz "Result is %d\n"
a: .int 6
b: .int 7
c: .int 8

.section .text
.globl _start
_start:
 mov a, %eax
 add b, %eax
 mov %eax, c

 mov c, %esi
 lea msg, %rdi
 mov $0, %eax
 call printf

 mov $0, %edi
 call exit