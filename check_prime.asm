%include "io.inc"

section .data
   n dd 10 
   primo db "primo", 0
   not_primo db "nao primo", 0

section .text
global CMAIN
CMAIN:

    mov eax, [n]     
    cmp eax, 2
    jl nao_primo     
    je eh_primo      

    mov ecx, 2    
teste:
    mov edx, 0
    mov ebx, ecx     
    mov eax, [n]     
    idiv ebx          

    cmp edx, 0
    je nao_primo    

    add ecx, 1
    mov eax, [n]
    cmp ecx, eax
    jl teste

eh_primo:
    PRINT_STRING primo
    ret

nao_primo:
    PRINT_STRING not_primo
    ret

