#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 
# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    cd ./dotfiles
	git pull origin master
else
	git clone https://github.com/julior/dotfiles.git	
fi
cd $HOME
ln -sb dotfiles/.screenrc .
# ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
# ln -sb dotfiles/.bashrc_custom .
# ln -sf dotfiles/.emacs.d .

