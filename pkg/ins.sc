name basm-lib
user triploit
ver 0.0.0.1

func install {<[
    #!/bin/bash
    if [ ! -d /usr/include/basm ]
    then
        echo "Create BASM Include Directory."
        sudo mkdir /usr/include/basm
    fi

    sudo mv *.asm /usr/include/basm/
]>}

func update
{
    &install
}

func remove
{
    sudo rm -rf /usr/include/basm/
}

func werror
{
    @echo Please download the Package manually and
    @echo create a directory "C:\basm"!
    @echo Please move all source files to this Directory(actually io.asm and value.asm).
}

func install_win
{
    &werror
}

func update_win
{
    &werror
}

func remove_win
{
    <[
        @echo off
        IF EXIST C:\basm (
            del C:\basm
        )
    ]>
}
