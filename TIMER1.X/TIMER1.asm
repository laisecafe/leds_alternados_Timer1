#include <xc.inc>

; CONFIG
CONFIG FOSC = HS        // Oscillator Selection bits (HS oscillator)
CONFIG WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
CONFIG PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
CONFIG BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
CONFIG LVP = OFF        // Low-Voltage Programming Enable bit (RB3 is digital I/O)

PSECT code
main:
    ; Configura PORTD como saída
    BANKSEL TRISD
    CLRF TRISD
    BANKSEL PORTD
    
    ; Loop principal com delay simples
loop:
    MOVLW 0b00001111    ; Liga RD0-RD3
    MOVWF PORTD
    CALL delay
    
    MOVLW 0b11110000    ; Liga RD4-RD7
    MOVWF PORTD
    CALL delay
    
    GOTO loop

; Subrotina de delay aproximado de 0.5s
delay:
    MOVLW 200
    MOVWF 0x20
outer:
    MOVLW 250
    MOVWF 0x21
inner:
    NOP
    DECFSZ 0x21, F
    GOTO inner
    DECFSZ 0x20, F
    GOTO outer
    RETURN

END