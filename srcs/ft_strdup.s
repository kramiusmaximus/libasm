global    	_ft_strdup
section   	.text
extern      _ft_strlen
extern      _malloc

_ft_strdup:									; rdi = src
			cmp		rdi, 0
			jz		error					; src is NULL
str_len:
            call    _ft_strlen
            mov     rcx, rax
malloc:
			inc		rcx						; length++
			push	rdi						; save src
			mov		rdi, rcx
			call	_malloc					; rax = _malloc(length)
			pop		rdi						; restore src
			cmp		rax, 0
			jz		error

copy_start:
			xor		rcx, rcx				; i = 0
			xor		rdx, rdx				; tmp = 0
			jmp		loop_body
increment:
			inc		rcx
loop_body:
			mov		dl, BYTE [rdi + rcx]
			mov		BYTE [rax + rcx], dl
			cmp		dl, 0
			jnz		increment
			jmp		return
return:
			ret
error:
			xor		rax, rax
			ret

