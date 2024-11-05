; Teste de endereçamento indireto

inicio:
ldi r27, 0x02 ; Inicializa o x
ldi r26, 0x00

ldi r16, 0xE ; Inicializa o par14

volta: st X, r16
inc r16
inc r16
inc r26
rjmp volta

break