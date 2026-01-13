; Programmers name :Arvind S Iyer
; Assignment No: 1
; Assignment name : ALP to display 'hello world' message
;#########Data Section######

section .data          ;Section for initialised variables
	welmsg db 0ah, "welcome to my first assignent ",0ah
	len_welmsg equ $-thxmsg
	
	thxmsg db 0ah,"thanks",0ah
	len_thxmsg equ $-thxmsg
	
	no1inmsg db 0ah,"please enter the first no",0ah
	len_no1inmsg equ $-no1inmsg
	
	no1outmsg db 0ah,"no1 is ::",0ah
	len_no1outmsg equ $-no1outmsg

;##########BSS Secion#############
section .bss              ;section for uninitialsed variables
	
	no1_buff resb 17

;####################### Text(code) 

section .text
	global _start
_start:
	mov rax,01            ;sys_exit()
	mov rdi,01
	mov rsi,welmsg
	mov rdx,len_welmsg            
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no1inmsg
	mov rdx ,len_no1inmsg
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,no1_buff
	mov rdx,17
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no1outmsg
	mov rdx,len_no1outmsg
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,no1_buff
	mov rdx,16
	syscall
	

exit:
	mov rax,1
	mov rdi,1
	mov rsi,thxmsg
	mov rdx,len_thxmsg
	
	mov rax,60
	mov rdi,0
	syscall

	
