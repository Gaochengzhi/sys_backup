echo '
#######################################
#                                     #
#   star to pull config to your sys!  #
#                                     #
#                                     #
#          by Gao Chengzhi            #
#    Sun Nov  1 23:21:06 CST 2020     #
#                                     #
#######################################
'
cd ~/sys_backup
git reset --hard
git pull origin master
cp -fr ~/sys_backup/.config/ranger ~/.config/
cp -fr ~/sys_backup/.config/nvim  ~/.config/
