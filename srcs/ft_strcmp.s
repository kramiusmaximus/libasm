global    	_ft_strcmp
section   	.text

_ft_strcmp:
                mov	rax, 0
                jmp loop_condition

loop_condition:
                cmp byte [rdi], 0
                je  return
                cmp byte [rsi], 0
                je  return
                mov al, byte [rdi]
                sub al, byte [rsi]
                cmp al, 0
                jne return
                jmp loop
loop:
                inc rdi
                inc rsi
                jmp loop_condition
return:
                mov al, byte [rdi]
                sub al, byte [rsi]
                ret