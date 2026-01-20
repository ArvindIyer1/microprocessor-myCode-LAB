section .data
    welmsg db "Welcome to my assignment (9 strings)", 0ah
    len_welmsg equ $-welmsg
    
    thxmsg db 0ah, 0ah, "Thank you for using my program", 0ah
    len_thxmsg equ $-thxmsg

    acceptmsg db 0ah, "Please Enter the String: ", 0ah
    len_acceptmsg equ $-acceptmsg

    outmsg db 0ah, "length of string :: ", 0ah
    len_outmsg equ $-outmsg

section .bss
    str_buff resb 10
    str_len resb 1

section .text
    global _start

_start:
    mov rax, 01
    mov rdi, 01
    mov rsi, welmsg
    mov rdx, len_welmsg
    syscall

    ; String 1
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 2
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 3
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 4
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 5
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 6
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 7
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 8
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

    ; String 9
    mov rax, 01
    mov rdi, 01
    mov rsi, acceptmsg
    mov rdx, len_acceptmsg
    syscall
    mov rax, 0
    mov rdi, 0
    mov rsi, str_buff
    mov rdx, 10
    syscall
    dec rax
    add al, 30h
    mov [str_len], al
    mov rax, 01
    mov rdi, 01
    mov rsi, outmsg
    mov rdx, len_outmsg
    syscall
    mov rax, 01
    mov rdi, 01
    mov rsi, str_len
    mov rdx, 1
    syscall

exit:
    mov rax, 1
    mov rdi, 1
    mov rsi, thxmsg
    mov rdx, len_thxmsg
    syscall

    mov rax, 60
    mov rdi, 0
    syscall