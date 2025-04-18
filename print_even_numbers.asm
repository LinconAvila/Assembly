%include "io.inc"

section .data
    n dd 20
    virg db ",",0
section .text
global CMAIN
CMAIN:
    mov ecx, 1
loop:
    cmp ecx, [n]
    ja fim
    mov edx, 0
    mov eax, ecx
    mov ebx, 2
    idiv ebx
    cmp edx, 1
    jne prox
    PRINT_UDEC 4, ecx
    PRINT_STRING virg
    
    
prox:
    ADD ecx, 1
    jmp loop
    
  
fim:
    xor eax, eax
    ret