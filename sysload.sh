echo '
#   star to load config to your sys!  #
=======================================
'
printf "%-${linewidth}s |\n"

# Homebrew for Mac
if [ $1 == 'brew' ]; then
	echo "mac start to load"
	
    $1 install python3 
    $1 install zsh
    $1 install tmux
    $1 install nodejs
    $1 install go
    $1 install htop
    pip3 install ranger-fm
    $1 install llvm
else
    
    echo $2 | sudo -S $1 install -y python3 
    echo $2 | sudo -S $1 -y install zsh
    echo $2 | sudo -S $1 -y install tmux
    echo $2 | sudo -S $1 -y install nodejs
    echo $2 | sudo -S $1 -y install go
    echo $2 | sudo -S $1 -y install htop
    echo $2 | sudo -S pip3 install ranger-fm
    echo $2 | sudo -S $1 -y install llvm
fi


source ~/.vimrc
source ~/.tmux.conf

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
source ~/.zshrc
# ranger
ranger --copy-config all
cp -fr  ~/sys_backup/.config/ranger ~/.config/
git clone https://github.com/LinXueyuanStdio/ranger_icon_plugin && cd ranger_icon_plugin && make install
# zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo $2 | sudo -S chsh -s /bin/zsh

echo $2 | sudo -S pip3 install DejaVu Fonts
cp -rf ~/sys_backup/.zshrc  ~/   
cp -rf ~/sys_backup/.vimrc  ~/  
cp -rf ~/sys_backup/.tmux.conf ~/
source ~/.zshrc
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# 常见文件夹
mkdir ~/mycode

# 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
echo $2 | sudo -S reboot

                   #_                _                   
 #___ _   _ ___    | |__   __ _  ___| | __   _   _ _ __  
#/ __| | | / __|   | '_ \ / _` |/ __| |/ /  | | | | '_ \ 
#\__ \ |_| \__ \   | |_) | (_| | (__|   <   | |_| | |_) |
#|___/\__, |___/___|_.__/ \__,_|\___|_|\_\___\__,_| .__/ 
#     |___/   |_____|                   |_____|   |_|    


# zsh install
chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# fzf

