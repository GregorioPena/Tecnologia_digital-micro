;--- Directivas del Programa

        LIST P = 16F84                                  ; se emplea el PIC 16F84
        INCLUDE <P16F84.INC>
        RADIX HEX                                       ; se emplea numeración hexadecimal
        __CONFIG _CP_OFF&_PWRTE_OFF&_WDT_OFF&_XT_OSC    ; code protec           off
                                                        ; power up timer        off
                                                        ; watchdog              off
                                                        ; osc

;--- Main cargar en memoria
        ORG 0

        MOVLW   0x3A            ; carga en W, 0x3A
        MOVWF   0x0C            ; mueve W a la direccion 0x0C


        END