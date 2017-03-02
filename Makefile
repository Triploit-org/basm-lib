all:
  if [ ! -d /usr/include/basm ]; then
    sudo mkdir /usr/include/basm
  fi
  sudo mv io.asm /usr/include/basm/io.asm
  sudo mv values.asm /usr/include/basm/values.basm
