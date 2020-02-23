INCLUDE EMU8086.INC
ORG 100H

MOV AH,1
INT 21H
MOV BL,AL
INT 21H
MOV CL,AL
PRINTN 

CMP AL,BL
JGE LA
JMP LD

    LA:
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H 
    JMP EXIT
    LD:
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H      
    JMP EXIT
 EXIT:
     MOV AH,4CH
     INT 21H

END MAIN
 
 

