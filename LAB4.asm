; Corrected x86/64 ALP to perform non-overlapped block transfer without string-specific instructions

global _start ; Make _start visible to the linker

%macro write 2
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

section .data
    welmsg      db 10, 10, 10, '***************** Welcome to the alp for non-overlapped block transfer******', 10, 10
    welmsglen   equ $-welmsg

    tyxmsg      db 10, 10, 10, ' *********** Thank u for using this program*********', 10, 10
    tyxmsglen   equ $-tyxmsg

    blkmsg      db 10, 10, 10, 'The block contents before transfer are::'
    blkmsglen   equ $-blkmsg

    srcmsg      db 10, 10, 'Source block ::', 10, 10
    srcmsglen   equ $-srcmsg

    destmsg     db 10, 10, 'Destination block ::', 10, 10
    destmsglen  equ $-destmsg

    srcblk      db 0AAH, 0BBH, 0CCH, 0DDH, 0EEH
    destblk     db 0, 0, 0, 0, 0
    blkcnt      equ 5

    space       db ' '
    spacelen    equ $-space

    ablkmsg     db 10, 10, 10, 'The block contents after transfer are ::', 10, 10
    ablkmsglen  equ $-ablkmsg

section .bss
    dispbuff    resb 2

section .text
_start:
    write welmsg, welmsglen

    write blkmsg, blkmsglen


    write srcmsg, srcmsglen
    mov rsi, srcblk
    mov rcx, blkcnt
again1:
    push rcx
    push rsi
    mov bl, [rsi]
    call disp2
    write space, spacelen 
    pop rsi
    pop rcx
    inc rsi
    loop again1


    write destmsg, destmsglen
    mov rsi, destblk
    mov rcx, blkcnt
again2:
    push rcx
    push rsi
    mov bl, [rsi]
    call disp2
    write space, spacelen
    pop rsi
    pop rcx
    inc rsi
    loop again2

    ; Core logic for block transfer
    mov rsi, srcblk  ; Source pointer
    mov rdi, destblk ; Destination pointer
    mov rcx, blkcnt  ; Loop counter

up2:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop up2

    ; Display blocks after transfer
    write ablkmsg, ablkmsglen

    
    write srcmsg, srcmsglen
    mov rsi, srcblk
    mov rcx, blkcnt
again3:
    push rcx
    push rsi
    mov bl, [rsi]
    call disp2
    write space, spacelen
    pop rsi
    pop rcx
    inc rsi
    loop again3

    
    write destmsg, destmsglen
    mov rsi, destblk
    mov rcx, blkcnt
again4:
    push rcx
    push rsi
    mov bl, [rsi]
    call disp2
    write space, spacelen
    pop rsi
    pop rcx
    inc rsi
    loop again4

    write tyxmsg, tyxmsglen

exit:
    mov rax, 60 ; syscall number for exit
    mov rdi, 0 ; exit code 0
    syscall


disp2:
    mov rdi, dispbuff
    mov rcx, 2

d2up:
    rol bl, 4
    mov al, bl
    and al, 0FH
    add al, '0' 
    cmp al, '9' 
    jbe d2skip
    add al, 7
d2skip:
    mov [rdi], al
    inc rdi
    loop d2up

    write dispbuff, 2 
    ret

