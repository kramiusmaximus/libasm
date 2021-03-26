global    	_ft_strcpy
section   	.text

_ft_strcpy:
                mov	rax, rdi

check_null_ptr:
                cmp rdi, 0
                je  return
                cmp rsi, 0
                je  return

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
return:
                ret