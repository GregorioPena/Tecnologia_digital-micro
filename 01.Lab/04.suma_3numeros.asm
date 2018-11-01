;--- Directivas del Programa

        LIST P = 16F84                                  ; se emplea el PIC 16F84
        INCLUDE <P16F84.INC>
        RADIX HEX                                       ; se emplea numeración hexadecimal
        __CONFIG _CP_OFF&_PWRTE_OFF&_WDT_OFF&_XT_OSC    ; code protec           off
                                                        ; power up timer        off
                                                        ; watchdog              off
                                                        ; osc

;--- Etiquetas
mem1    EQU     0x0E
mem2    EQU     0x0F
mem3    EQU     0x10
mem4    EQU     0x0D

;--- Main suma 3 numeros
        ORG 0

        MOVLW   0x03        ; carga en W, 0x3A
        MOVWF   mem1        ; mueve W a la direccion mem1
        MOVLW   0x07        ; carga en W, 0x07
        MOVWF   mem2        ; mueve W a la direccion mem1
        MOVLW   0x0A        ; carga en W, 0x0A
        MOVWF   mem3        ; mueve W a la direccion mem3

        ;--- sumar
        ADDWF   mem1, 0     ; suma W (0x0A) a mem1, carga en W
        ADDWF   mem2, 0     ; suma W a mem2, carga en W   
        MOVWF   mem4        ; mueve W a 0x0D
     

        END