section .data
    num DB 5 ;for some reason it always starts from 0x804a00 (ill research about it)

section .text
global _start 



_start:
    mov eax, 1
    mov ebx , [0x804a000] ;num is in stack and we are writing it into the ebx 
    ;num -> 0x804a00
    ;[num] -> 5 
    ;[0x804a00] -> 5
    int 0x80

    
