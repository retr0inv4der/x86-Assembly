section .data
    list db "ABCDEFGHI"
    list_len db 9

section .text
global _start


fgets:
    cmp ecx, [list_len]
    je end
    call printchar
    jmp fgets
    


printchar:
    ;save each register before messing around
    push eax
    push ecx

    ;call the syscall write for the char
    mov eax, 4
    mov ebx, 1
    mov ecx , [esp+4]
    mov edx, 1
    int 80h    
    ;increase the index
    pop ecx
    add ecx, 1
    
    ;increase the pointer
    pop eax
    add eax, 1
    ret

_start:
    mov eax , list ;the address of the beginning of the list
    mov ecx , [list_len] ; the counter
    mov ecx, 0  ; the index
    call fgets

    ;syscall exit
    mov eax, 1
    mov ebx, 1
    int 80h

end:
    ret

