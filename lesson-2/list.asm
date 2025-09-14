section .data
    list db 1,2,3,4,5,6

section .text
global _start
_start:
    mov eax , list
    mov eax ,1 
    mov ebx, 1
    int 0x80 

