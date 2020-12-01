#!/bin/bash

wget https://raw.githubusercontent.com/zmwater/vim/master/vimrc -O ~/.vimrc

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree || cd ~/.vim/pack/plugins/start/nerdtree && git pull
git clone https://github.com/preservim/tagbar.git ~/.vim/pack/plugins/start/tagbar || cd ~/.vim/pack/plugins/start/tagbar && git pull
git clone https://github.com/preservim/nerdcommenter.git ~/.vim/pack/plugins/start/nerdcommenter || cd ~/.vim/pack/plugins/start/nerdcommenter && git pull

# youcompleteme
# 暂时有问题
#git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/plugins/start/YouCompleteMe || cd ~/.vim/pack/plugins/start/YouCompleteMe && git pull
#cd ~/.vim/pack/plugins/start/YouCompleteMe && git submodule update --init --recursive && python3 install.py

# vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go || cd ~/.vim/pack/plugins/start/vim-go && git pull
vim +GoUpdateBinaries +q
