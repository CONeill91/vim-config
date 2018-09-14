#!/bin/bash

# Simple script to replace .vimrc w/ 
# a symbolc link to the config file in this directory

readonly VIMRC=$HOME/.vimrc
echo $VIMRC

if [ -f $VIMRC ]; then
    rm -rf $VIMRC
fi

ln -s $(readlink -f ./vim) $VIMRC
