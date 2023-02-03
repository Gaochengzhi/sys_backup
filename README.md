# System Backup Manual

## Info
 This is a shell script I write to build new development environment and sync my config file from commnad line.



### First of all: homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neofetch tmux neovim fzf zsh tldr ncdu htop nodejs npm python3 clang
npm install -g neovim
pip3 install neovim
```

### Tip: Configure your workstation remotely using a machine you're familiar with:

```shell
sudo apt update
sudo apt-get -y install  net-tools openssh-server curl git 
tldr -u
sudo sed -i "32i PermitRootLogin yes" /etc/ssh/sshd_config
sudo ufw allow ssh

sudo service ssh start
ifconfig -a
whoami
```

### ClashX 

```shell
wget -O clash.gz https://github.com/Dreamacro/clash/releases/download/v1.11.12/clash-linux-amd64-v1.11.12.gz
gzip -f clash.gz -d 
chmod +x clash
sudo mv clash /usr/local/bin/
wget https://feed.iggapis.net/c/af8e7235-c65f-4079-8b84-fdf1e14e66db/platform/clash/iGG-iGugeGaochengzhi
mkdir ~/.config/clash
mv iGG-iGuge ~/.config/clash/config.yaml
clash
```



### nerdFont

```txt
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.fonts
fc-cache -fv
```




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


## Push your system settings

```
backpush
```

## Pull your system settings
```
backpull(Tested)
```
