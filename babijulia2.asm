; Exercício 1 - Prática 2


.DEF par1 = r0  ; onde tiver par1 vai ser igual r0
.DEF par2 = r1
.DEF par3 = r2
.DEF soma = r3
.DEF aux = r17

; Armazenar três números pares nos registradores r0, r1 e r2
inicio:  ldi r16, 0xE  ; ldi nao admite registrador menor que o r16
ldi aux, 0x6
mov par1, r16 ; par1 = r0 <- r16 = 0xE
mov par2, par1 ; par2 <- par1
inc par2
inc par2
mov par3, par2
inc par3
inc par3

; Carregar dados na memória
volta: sts 0x200, par1
sts 0x201, par2
sts 0x202, par3

; Ler os dados ecarregar a soma
lds par1, 0x200
add soma, par1
lds par2, 0x201
add soma, par2
lds par3, 0x202
add soma, par3
sts 0x203, soma

add par1, aux
add par2, aux
add par3, aux
rjmp volta ; loop relativo

break