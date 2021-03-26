global    	_ft_strcmp
section   	.text

_ft_strcmp:
                mov	rax, 0

check_null_ptr:
                cmp rdi, 0
                je  return
                cmp rsi, 0
                je  return

loop_condition:
                cmp byte [rdi], 0
                je  end
                cmp byte [rsi], 0
                je  end
                mov al, byte [rdi]
                sub al, byte [rsi]
                cmp al, 0
                jne end
loop:
                inc rdi
                inc rsi
                jmp loop_condition
end:
                movzx rax, byte [rdi]
                movzx rbx, byte [rsi]
                sub rax, rbx
                jmp return
return:
                ret