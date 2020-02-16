   include emu8086.inc
   org 100h
   
  mov cl,10 
   m:
   mov bl,10
    top:print '*'
    dec bl
    jnz top
    printn ' '       
    dec cl 
    jnz m
     

   end    