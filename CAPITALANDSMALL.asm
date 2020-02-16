   include emu8086.inc
   org 100h
   
 MOV BL,65
 MOV BH,97 
 MOV CL,1
 TOP: PRINTN
     
     MOV AH,2
     MOV DL,BL
     INT 21H 
     MOV DL,BH
     INT 21H
     INC BH
     INC BL
     INC CL
     
    CMP CL,26
    JNE TOP
     

   end    