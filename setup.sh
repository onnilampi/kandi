#!/bin/bash

sudo apt-get install libfontconfig1-dev libharfbuzz-dev zlib1g-dev libicu-dev libgraphite2-dev build-essential libssl-dev 

export PATH="$PATH:$HOME/.carbo/bin"

curl -sSf https://static.rust-lang.org/rustup.sh | sh

cargo install tectonic

cd thesis

tectonic kandi.tex
