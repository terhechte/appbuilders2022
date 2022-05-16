#!/bin/sh
# Only if you want to run the project in Xcode
source $HOME/.cargo/env
cargo install uniffi_bindgen --version 0.16.0
rustup target add x86_64-apple-darwin
rustup target add aarch64-apple-darwin
rustup target add x86_64-apple-ios
rustup target add aarch64-apple-ios
rustup target add aarch64-apple-ios-sim

