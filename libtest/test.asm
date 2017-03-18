%%../io.asm
%%../values.asm

main:
    ata list_ax, 7
    ata list_ax, 3
    ata list_bx, 3
    ata list_bx, 7

    jmp add_array
    jmp write_array_int

    # var o_in
    # inp
    # mvv hx, o_in

    # jmp stack_to_array
    # pushv list_ax

    # pushv o_in
    # str hx
    # pop

    # jmp write_string
    # jmp new_line
    hlt
