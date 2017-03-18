func install
{
    if [ ! -d /usr/include/basm ]; then
    	echo "Create BASM Include Directory."
    	sudo mkdir /usr/include/basm
    fi

    sudo mv *.asm /usr/include/basm/
}

func update
{
    &install
}

func remove
{
    sudo rm -rf /usr/include/basm/
    [
        #!/bin/bash
        echo -e "\e[1;31m## Should BASM also be uninstalled? (y/n) \e[00m\c"
        read

        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        	# sudo rm /usr/bin/basm/
        	# sudo secpm remove basm
        	echo -e "\e[1;32m## OK.\e[00m"
        else
        	echo -e "\e[1;32m## Basm won't be uninstalled."
        fi
    ]
}
