#!/bin/bash
if [ ! -d /usr/include/basm ]; then
	echo "Create BASM Include Directory."
	sudo mkdir /usr/include/basm
fi
echo "-- IO"
sudo cp io.asm /usr/include/basm/io.asm
echo "-- VALUES"
sudo cp values.asm /usr/include/basm/values.basm

