section .text

global _start
_start:
    
    mov eax, 4
    mov ecx , 3
    add eax , ecx 
    mov eax , 2 


    mov eax , 4
    mov ecx , 5
    sub eax , ecx

    mov eax, 2
    mov ecx, 3
    mul ecx

    mov eax, 12
    mov ecx, 2
    div ecx 

    mov eax, 11 
    div ecx 

