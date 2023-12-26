#!/usr/bin/env bash

cowsay_cli() {
  echo "The program has started running"

  # Install cowsay if it's not already installed
  if ! command -v cowsay >/dev/null; then
    sudo apt-get install cowsay -y
  fi

  # Create or overwrite dragon.txt with the output of cowsay
  cowsay -f dragon "Run for cover, I am a dragon.. RWAR" > dragon.txt

  # Check if the word "dragon" is in the file
  if grep -qi "dragon" dragon.txt; then
    echo "The word 'dragon' was found in dragon.txt"
  else
    echo "The word 'dragon' was not found in dragon.txt"
  fi

  # Display the contents of dragon.txt
  cat dragon.txt

  # List files in the current directory
  ls -ltra
}

# Call the function
cowsay_cli
