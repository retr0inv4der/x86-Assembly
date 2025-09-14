section .data
    list db "ABCDEFGHI"
    list_len db 9

section .text
global _start

fgets:
    mov eax, [esp+4]    
    ret

_start:
    mov eax , list ;the address of the beginning of the list
    mov ecx , [list_len] ; the counter
    push eax
    push ecx
    call fgets
