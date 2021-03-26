global      _ft_read
section      .text
extern      ___error

_ft_read:
            mov rax, 0x02000003
            syscall
            jc exit_error
            ret
exit_error:
            push        rax
            call        ___error
            pop         qword [rax]
            mov         rax, -1
            ret
