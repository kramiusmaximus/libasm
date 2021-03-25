global    	_ft_write
section   	.text

_ft_write:
                mov	rax, 0
                jmp loop_condition

loop_condition:
                cmp byte [rdi], 0
                jne loop
                ret
loop:
                inc rax
                inc rdi
                jmp loop_condition