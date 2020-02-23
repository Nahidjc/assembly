INCLUDE EMU8086.INC
ORG 100H

MAIN PROC
    MOV BH,2 
    MOV BL,0
        
    CMP BH,BL
    JGE LA
    JMP L
    
    L:
    
    NEG BH
    ADD BH,48
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    LA:
    ADD BH,48
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    MAIN ENDP
END MAIN