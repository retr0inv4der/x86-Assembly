section .data
    num db 12


section .text
global _start

_start:
    mov eax , 0 
    mov ecx , 1


loop:
    inc ecx
    add eax , ecx 
    cmp ecx , [num]
    jne loop
    jmp end

end : 
    int 80h

