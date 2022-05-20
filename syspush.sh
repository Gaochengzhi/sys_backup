echo '
#######################################
#                                     #
#   star to push config to github!    #
#                                     #
#                                     #
#          by Gao Chengzhi            #
#    Sun Nov  1 23:21:06 CST 2020     #
#                                     #
#######################################
'
cd ~/sys_backup 
cp -f ~/.vimrc ~/sys_backup           
cp -f ~/.tmux.conf ~/sys_backup
cp -Rf ~/.config/ranger ~/sys_backup/.config/
cp -Rf ~/.vim/vimrc ~/sys_backup/.vim/
git add -A    
git commit -am "Push Settings" 
git push https://github.com/Gaochengzhi/sys_backup.git/    


