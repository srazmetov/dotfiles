#!/bin/bash

rm -rf ~/backup
mkdir ~/backup
mv ~/.zshrc ~/backup
mv ~/.vimrc ~/backup
mv ~/.tmux.conf ~/backup
mv ~/.config/Terminal/terminalrc ~/backup
mv ~/.vim/colors/solarized.vim ~/backup
mkdir -p ~/.config/Terminal/
mkdir -p ~/.vim/colors/

ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/solarized/xfce4-terminal/dark/terminalrc ~/.config/Terminal/terminalrc
ln -s $(pwd)/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim

# rTorrent install
mkdir -p ~/bin
mv ~/.rtorrent.rc ~/backup
mv ~/bin/start_rtorrent.sh ~/backup
mv ~/bin/stop_rtorrent.sh ~/backup
sudo mv /etc/systemd/system/rtorrent.service ~/backup
ln -s $(pwd)/rtorrent/rtorrent.rc ~/.rtorrent.rc
ln -s $(pwd)/rtorrent/bin/start_rtorrent.sh  ~/bin/start_rtorrent.sh
ln -s $(pwd)/rtorrent/bin/stop_rtorrent.sh  ~/bin/stop_rtorrent.sh
sudo ln -s $(pwd)/rtorrent/systemd/rtorrent.service /etc/systemd/system/rtorrent.service
sudo systemctl enable rtorrent.service

