stack_to_array:		# needs length of input in hx, output in list_ax; if yout get input with inp,
	var len 	# the value is on the stack and the length of the input is in hx,
	mvv hx, len	# so be careful with hx!
	mov 0, fx
	.ar:
		ata list_ax, 0
		sub 1, hx
	ggn ar
	pushv len
	str hx
	pop
	.beg:
		str gx
		asv list_ax, fx, gx
		sub 1, hx
		add 1, fx
		pop
	ggn beg
	return
