global    	_ft_strdup
section   	.text
extern      _ft_strlen
extern      _malloc

_ft_strdup:
                mov rcx, 0
                call _ft_strlen
                push rdi
                mov rdi, rax
                call _malloc
                mov rbx, rdi
                pop rdi
                jmp loop_condition

loop_condition:
                cmp rcx, rbx
                jb  loop
                jmp return
loop:
                mov dl, byte [rdi + rcx]
                inc rcx
                jmp loop_condition
return:
                mov byte [rax + rcx], 0
                ret