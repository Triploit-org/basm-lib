wrt_str: <2> # needs string value on Stack, Length on String in HX
	var _hx
	ptr hx, _hx
	.beg:
		str hx
		ptc
		pop
		gnn beg
	ptr hx, hx
	return

write_int_list: # needs string value on Stack, Length on String in HX
    var x
    mov hx, x
    ptr hx, x
    .beg:
        sub 1, hx
        outl
        pop
        push 32
        ptc
        pop
    ggn beg
    ptr hx, hx
    return

write_array_char: # needs string value in LIST_AX
    var _bx
    var _ax
    var _hx

    mov bx, _bx
    mov ax, _ax
    mov hx, _hx

    ptr bx, _bx
    ptr ax, _ax
    ptr hx, _hx

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

    ptr bx, bx
    ptr ax, ax
    ptr hx, hx
    return

write_array_int: # needs int values in LIST_AX
    var _bx
    var _ax
    var _hx

    mov bx, _bx
    mov ax, _ax
    mov hx, _hx

    ptr bx, _bx
    ptr ax, _ax
    ptr hx, _hx

    ags list_ax, hx
    mov 0, ax
    .beg:
        aga list_ax, ax, bx
        push bx
        outl
        pop
        add 1, ax
        sub 1, hx
    ggn beg

    ptr bx, bx
    ptr ax, ax
    ptr hx, hx
    return

pln: <1> # prints new line
	pop
    push 10
    ptc
    pop
    return
