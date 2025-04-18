%include "io.inc"

section .data
    x dd 5         
section .text
global CMAIN
CMAIN:
    mov ebx, [x]        
    mov eax, 1            
    mov ecx, ebx         
    
    cmp ecx, 0
    je  fim

loop:
    imul eax, ecx    
    loop loop            

fim:
    PRINT_UDEC 4, EAX    

    