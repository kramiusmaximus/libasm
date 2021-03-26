global    	_ft_strdup
section   	.text
extern      _ft_strlen
extern      _malloc

_ft_strdup:
			cmp		rdi, 0
			je		error
str_len:
            call    _ft_strlen
            mov     rcx, rax
malloc:
			inc		rcx
			push	rdi
			mov		rdi, rcx
			call	_malloc
			pop		rdi
			cmp		rax, 0
			je		error

copy_start:
			xor		rcx, rcx
			xor		rdx, rdx
			jmp		loop_body
increment:
			inc		rcx
loop_body:
			mov		dl, BYTE [rdi + rcx]
			mov		BYTE [rax + rcx], dl
			cmp		dl, 0
			jne		increment
			jmp		return
return:
			ret
error:
			xor		rax, rax
			ret

