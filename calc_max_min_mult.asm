.code
        lda n1
        jz FIM
        lda n2
        jz FIM
        not
        add #01h
        add n1
        jn CASO2

CASO1:  lda n1
        sta max
        lda n2
        sta min
        jmp MULT

CASO2:  lda n1
        sta min
        lda n2
        sta max

MULT:    lda min

INICIO: add #0ffh
        sta min
        lda resultado
        add max
        sta resultado
        lda min
        jz FIM
        jmp INICIO

FIM:    hlt

.endcode


.data

n1:     db #02h
n2:     db #04h

max:    db #00h
min:    db #00h

resultado: db #00h
.enddata




