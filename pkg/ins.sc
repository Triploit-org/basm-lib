func install
{
    <[
        #!/bin/bash
        if [ ! -d /usr/include/basm ]
        then
            echo "Create BASM Include Directory."
            sudo mkdir /usr/include/basm
        fi

        sudo mv *.asm /usr/include/basm/
    ]>
}

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
        	sudo secpm remove basm
        	# echo -e "## OK.\e[00m"
        else
        	echo -e "## Basm won't be uninstalled."
        fi
    ]>
}

func install_win
{
    <[
        cd %AppData%\basm-lib
        
        IF EXIST C:\basm (
            move *.asm C:\basm
        ) ELSE (
            mkdir C:\basm
            move *.asm C:\basm
        )
    ]>
}

func update_win
{
    &install
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
