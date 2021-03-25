          global    start
          section   .text
start:
    mov rax, 0 ; This will be the current number
    mov rcx, 5 ; This will be the last number

.loop:
    cmp rax, 1
    jl .loopbody ; Jump to .loopbody if rax < rcx
    jnl exit ; Jump to _exit if rax ≥ rcx
.loopbody:
    push rax ; Store the rax value for later use

    mov rax, 0x02000004 ; 4 for Linux
    mov rdi, 1 ; STDOUT
    mov rsi, msg
    mov rdx, len

    syscall

    pop rax ; Take it back to rax

    inc rax ; Add 1 to rax. This is required since the loop must have an ending.

    jmp .loop ; Back to loop
exit:
    mov rax, 0x02000001; Return
    mov rdi, 0;
    syscall

        section .data
msg     db      'Hello, world!', 0xA
len     equ     $ - msg
nloops  equ     5

