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
cp -Rf ~/.config/ranger ~/sys_backup/.config/
cp -Rf ~/.config/nvim ~/sys_backup/.config/
git add -A    
git commit -am "Push Settings"`date -u +%Y-%m-%d`
git push https://github.com/Gaochengzhi/sys_backup.git/    


