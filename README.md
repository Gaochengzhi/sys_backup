# System Backup Manual

## Info
 This is a shell script I write to sync my config file from commnad line.

 if you execute the load file, it will do the following things:

 **for mac**

 1. Download homwbrew as an package manager
 2. Install some basic packages: like Python3 ,go ,nodejs ,llvm.
 3. Load zsh and oh-my-zsh
 4. set up vim plug and vim config file.

**for some linux**
 1. Install some basic packages: like Python3 ,ranger ,go ,nodejs ,llvm, vscode
 2. Load zsh and oh-my-zsh
 3. set up vim plug and vim config file.
   
   
## Load your old system's settings

### Local machine:

```shell
ssh-copy-id root@XXXXXXXXXX
```
### Remote machine
```shell
useradd kounarushi  
passwd kounarushi
su
chmod u+w /etc/sudoers
vi /etc/sudoers
# 找到这行 root ALL=(ALL) ALL,在他下面添加kounarushi ALL=(ALL) ALL (这里的xxx是你的用户名)
echo "password" | sudo -S yum -y install git
```

### Local machine:

```
ssh-copy-id kounarushi@XXXXXXXXXX
```

### Remote machine

```shell
git clone https://github.com/Gaochengzhi/sys_backup.git
sh sys_backup/sysload.sh yum password
# CHANGE PACKAGE！& PASSWORD!
```
### CentOS
Only tested on centos, may not work well on your machine!




## Push your system settings
```
backpush
```

## Pull your system settings
```
backpull(Tested)
```
