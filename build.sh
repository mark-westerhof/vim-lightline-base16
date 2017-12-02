#!/usr/bin/bash

# Uses https://github.com/golf1052/base16-builder-typescript

base16-builder update
ln -s $(pwd) sources/templates/vim-lightline-base16
base16-builder build
rm autoload/lightline/colorscheme/*
cp themes/vim-lightline-base16/autoload/lightline/colorscheme/* autoload/lightline/colorscheme
