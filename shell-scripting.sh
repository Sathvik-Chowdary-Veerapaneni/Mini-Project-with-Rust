#!/bin/bash

# Set the path to the Config.toml file
CONFIG_FILE=/home/ubuntu/Mini-Project-with-Rust/Config.toml

# Define an array of commands to execute
commands=(
  "git clone https://github.com/Sathvik-Chowdary-Veerapaneni/Mini-Project-with-Rust.git"
  "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s --  -y"
  "source "$HOME/.cargo/env""
  "sudo apt install build-essential -y"
  "cargo install trunk"
  "rustup target add wasm32-unknown-unknown"
  "echo 'yew = { version = \"0.20\", features = [\"csr\"] }' | sudo tee -a $CONFIG_FILE"
  "cd /home/ubuntu/Mini-Project-with-Rust && trunk serve --open"
)

# Loop through the commands and execute them
for cmd in "${commands[@]}"; do
  eval "$cmd"
done
