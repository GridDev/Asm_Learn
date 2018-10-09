MODEL	TINY 
STACK 256	
DATASEG
	A DB 1,2,3,4,5,6,7,8,9,0 
CODESEG
start:	
lea si, A
mov ah, 2h
mov cx, 10
loop_start:
mov dl, [si]
add dl, 30h
int 21h
add si, 1
mov dl, 0ah
int 21h
loop loop_start

mov ah, 04Ch       
int 21h

end start	
