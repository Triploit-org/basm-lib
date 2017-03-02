%%../io.asm
%%../values.asm

main:
    var o_in
    inp
    mvv hx, o_in

    jmp stack_to_array
    pushv list_ax

    pushv o_in
    str hx
    pop

    jmp write_string
    jmp new_line
    hlt
