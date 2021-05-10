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
git fetch git  https://github.com/Gaochengzhi/sys_backup.git
cp -f ~/.vimrc ~/sys_backup           
cp -f ~/.zshrc ~/sys_backup
cp -f ~/.tmux.conf ~/sys_backup
cp -Rf ~/.config ~/sys_backup/
cp -Rf ~/.vim ~/sys_backup/
tar -cf .vim.tar  .vim            
tar -cf .config.tar  .config            
rm -rf .vim .config
git add -A    
git commit -am "Push Settings" 
git push https://github.com/Gaochengzhi/sys_backup.git/    


