#!/usr/bin/env sh

function cowsay_cli() {
  echo "The program has started running"
  sudo apt-install cowsay -y
  cowsay -f dragon "Run for cover, I am a dragon.. RWAR" >> dragon.txt
  grep -i "dragon" dragon.txt
  cat dragon.txt
  ls -ltra
}

# shellcheck disable=SC1073
cowsay_cli()