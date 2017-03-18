stack_to_array:		# needs length of input in hx, output in list_ax; if yout get input with inp,
	var _hx
	var _fx
	var _gx

	mov gx, _gx
	mov hx, _hx
	mov fx, _fx

	ptr gx, _gx
	ptr hx, _hx
	ptr fx, _fx

	var len 	# the value is on the stack and the length of the input is in hx,
	mov hx, len	# so be careful with hx!
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

	ptr gx, gx
	ptr hx, hx
	ptr fx, fx
	return

# add_array: # adds list_bx to list_ax
	# pushv x    -> x to stack
	# mvv ax, x  -> x = ax
