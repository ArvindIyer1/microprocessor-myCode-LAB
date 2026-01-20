; Programmers name :Arvind S Iyer
; Assignment No: 1
; Assignment name : ALP to display 'hello world' message
;#########Data Section######

section .data          ;Section for initialised variables
	
	welmsg db "Welcome to ,my second assignment ",0ah
	len_welmsg equ $-welmsg
	
	thxmsg db 0ah,0ah,"Thank you for using my program" ,0ah
    len_thxmsg equ $-thxmsg

    acceptmsg db 0ah ,"Please Enter the Srring :",0ah
    len_acceptmsg equ $-acceptmsg

    outmsg db 0ah,"length of string :: ",0ah
    len_outmsg equ $-outmsg
;##########BSS Secion#############
section .bss              ;section for uninitialsed variables
    
    str_buff resb 10
    str_len resb 11



;####################### Text(code) 

section .text
	global _start
_start:

    mov rax,01            ;sys_exit()
	mov rdi , 01
	mov rsi ,acceptmsg
	mov rdx ,len_acceptmsg             ; return code
	syscall

    mov rax ,0
    mov rdi ,0
    mov rsi ,str_buff
    mov rdx ,10
    syscall
    
    dec rax 
    add al,30h
    mov [str_len],al

    mov rax ,01
    mov rdi ,01
    mov rsi ,outmsg
    mov rdx ,len_outmsg
    syscall

    mov rax ,01
    mov rdi ,01
    mov rsi ,str_len
    mov rdx ,1
    syscall


exit:
	mov rax ,1               ;sys_exit()
	mov rdi ,1 
    mov rsi,thxmsg
    mov rdx,len_thxmsg
    syscall

mov rax,60
mov rdi,0
syscall