#!/bin/bash
pacman -S --noconfirm git wget curl
cd ~/
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh 
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s $(which zsh)
#and here the configuration later for cange the .zshrc with good things.
zshrc_conf="the hacker tricks become"