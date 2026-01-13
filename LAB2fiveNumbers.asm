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
	
	no2inmsg db 0ah,"please enter the second no",0ah
	len_no2inmsg equ $-no2inmsg
	
	no2outmsg db 0ah,"no2 is ::",0ah
	len_no2outmsg equ $-no2outmsg
	
	no3inmsg db 0ah,"please enter the third no",0ah
	len_no3inmsg equ $-no3inmsg
	
	no3outmsg db 0ah,"no3 is ::",0ah
	len_no3outmsg equ $-no3outmsg
	
	no4inmsg db 0ah,"please enter the fourth no",0ah
	len_no4inmsg equ $-no4inmsg
	
	no4outmsg db 0ah,"no4 is ::",0ah
	len_no4outmsg equ $-no4outmsg
	
	no5inmsg db 0ah,"please enter the fifth no",0ah
	len_no5inmsg equ $-no5inmsg
	
	no5outmsg db 0ah,"no5 is ::",0ah
	len_no5outmsg equ $-no5outmsg
	
	
	
	

;##########BSS Secion#############
section .bss              ;section for uninitialsed variables
	
	no1_buff resb 17
	no2_buff resb 17
	no3_buff resb 17
	no4_buff resb 17
	no5_buff resb 17
	

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
	
	
	mov rax,01
	mov rdi,01
	mov rsi,no2inmsg
	mov rdx ,len_no2inmsg
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,no2_buff
	mov rdx,17
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no2outmsg
	mov rdx,len_no2outmsg
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,no2_buff
	mov rdx,16
	syscall
	
	
	mov rax,01
	mov rdi,01
	mov rsi,no3inmsg
	mov rdx ,len_no3inmsg
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,no3_buff
	mov rdx,17
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no3outmsg
	mov rdx,len_no3outmsg
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,no3_buff
	mov rdx,16
	syscall
	
	
	mov rax,01
	mov rdi,01
	mov rsi,no4inmsg
	mov rdx ,len_no4inmsg
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,no4_buff
	mov rdx,17
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no4outmsg
	mov rdx,len_no4outmsg
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,no4_buff
	mov rdx,16
	syscall
	
	
	mov rax,01
	mov rdi,01
	mov rsi,no5inmsg
	mov rdx ,len_no5inmsg
	syscall
	
	mov rax,0
	mov rdi,0
	mov rsi,no5_buff
	mov rdx,17
	syscall
	
	mov rax,01
	mov rdi,01
	mov rsi,no5outmsg
	mov rdx,len_no5outmsg
	syscall
	
	mov rax,1
	mov rdi,1
	mov rsi,no5_buff
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

	
