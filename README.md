# Mini-Project-with-Rust
This repo will contain the mini project of Software Engineering class developed with Rust Programming Language.

# Rust Web Application
We can build a web application using the "Yew" framework with Rust. I have developed a application that renders the HTML pages and hosts with the local server using trunk.

# Environment Setup
* curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
* select ‘ 1 ‘ for default installation

To configure your current shell, run:
* source "$HOME/.cargo/env"
* cargo install trunk
* rustup target add wasm32-unknown-unknown

Setting Up the Project
* clone the [repo](https://github.com/Sathvik-Chowdary-Veerapaneni/Mini-Project-with-Rust.git)
* cd to repo folder

Open the terminal
* trunk serve --open

The application will be hosting on the local host
* http://127.0.0.1:8080 
