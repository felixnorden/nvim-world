#!/bin/sh
brew install ninja

# Fetch server
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive

# Build
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

echo "Successfully installed Sumneko Lua LSP"
