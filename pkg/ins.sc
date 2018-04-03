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
    <[
        #!/bin/bash
        echo -e "## Should BASM also be uninstalled? (y/n) \e[00m\c"
        read

        if [[ $REPLY =~ ^[Yy]$ ]]
        then
		# sudo rm /usr/bin/basm/
		sudo secpm remove triploit:basm
		# echo -e "## OK.\e[00m"
        else
        	echo -e "## Basm won't be uninstalled."
        fi
    ]>
}

func werror
{
    @echo Please download the Package manually and
    @echo create a directory "C:\basm"!
    @echo Please move all source files tp this Directory(actually io.asm and value.asm).
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
