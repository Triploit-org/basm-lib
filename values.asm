stack_to_array: # needs length of input in hx, output in list_ax; if yout get input with inp,
				# the value is on the stack and the length of the input is in hx,
				# so be careful with hx!
	var len
	mvv hx, len
	.ar:
		ata list_ax, 0
		sub 1, hx
	ggn ar
	pushv len
	str hx
	pop
	.beg:
		sub 1, hx
		str gx

		asv list_ax, hx, gx
		pop
	ggn beg
	return

array_to_stack: # needs value in list_ax
				# "asa your_array, list_ax"
				# -> This sets the value of list_ax to your_array
	ags list_ax, hx
	mov 0, fx
	.beg:
		aga list_ax, fx, gx
		push gx
		sub 1, hx
		add 1, fx
	gnn beg
	return
