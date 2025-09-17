section .bss ; a section for uninitialized data
    chunk resd 1 ; reserves 1 double word (2bytes)

section .text 
global _start 

_start:
    mov eax, chunk
    mov dword [eax], 42
    
    mov eax, 1 
    mov ebx, 1
    int 80h
