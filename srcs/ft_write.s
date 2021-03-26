global    	_ft_write
section   	.text
extern      ___error

_ft_write:
                mov rax, 0x02000004
                syscall
                jc exit_error
                ret
exit_error:
                push        rax
                call        ___error
                pop         qword [rax]
                mov         rax, -1
                ret
