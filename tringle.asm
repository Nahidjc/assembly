   include emu8086.inc
   org 100h
   
  mov cl,1
   m:
   sub bl,cl
   mov bl,cl
    top:print '*'
    dec bl
    jne top
    printn ' '       
    inc cl
    cmp cl,10 
    jne m
     

   end    