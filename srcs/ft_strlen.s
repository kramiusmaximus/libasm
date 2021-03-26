global    	_ft_strlen
section   	.text

_ft_strlen:
                mov	rax, 0
                mov rbx, rdi

check_null_ptr:
                cmp rbx, 0
                je  return

loop_condition:
                cmp byte [rbx], 0
                jne loop
                ret
loop:
                inc rax
                inc rbx
                jmp loop_condition
return:
                ret

