global    	_ft_strlen
section   	.text

_ft_strlen:
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

