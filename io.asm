write_string: # needs string value on Stack, Length on String in HX
	.beg:
		sub 1, hx
		ptc
		pop
	ggn beg
	return

write_array: # needs string value in LIST_AX
	ags list_ax, hx
	mov 0, ax
	.beg:
		aga list_ax, ax, bx
		push bx
		ptc
		pop
		add 1, ax
		sub 1, hx
	ggn beg
	return

new_line: # prints new line
	push 10
	ptc
	pop
	return
