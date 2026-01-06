; Programmers name :Arvind S Iyer
; Assignment No: 1
; Assignment name : ALP to display 'hello world' message
;#########Data Section######

section .data          ;Section for initialised variables
	hwmsg db 0ah ,"Hello World 1,2,3,4,5,6,7,8,9,10 " ,0ah
	len_hwmsg equ $-hwmsg

;##########BSS Secion#############
section .bss              ;section for uninitialsed variables


;####################### Text(code) 

section .text
	global _start
_start:

mov rax,01            ;sys_exit()
	mov rdi , 01
	mov rsi , hwmsg
	mov rdx , len_hwmsg              ; return code
	syscall

exit:
	mov rax , 60                ;sys_sxit()
	mov rdi , 01

	syscall
