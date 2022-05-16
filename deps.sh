#!/bin/sh
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
cargo install uniffi_bindgen --version 0.16.0
cd ./fetch_dependencies
cargo check
