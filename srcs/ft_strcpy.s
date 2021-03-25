global    	_ft_strcpy
section   	.text

_ft_strcpy
                mov	rax, rdi
                jmp loop_condition

loop_condition:
                cmp byte [rsi], 0
                je  end
                jmp loop
loop:
                mov bl, byte [rsi]
                mov byte [rdi], bl
                inc rdi
                inc rsi
                jmp loop_condition

end:
                mov byte [rdi], 0
                ret