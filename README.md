# Neovim Config

## Installation

#### For Arch
```
sudo pacman -S nvim
```

#### For Ubuntu

###### Snap Store method
```
sudo snap install nvim --classic
```

###### PPA method [link](https://www.linuxcapable.com/how-to-install-neovim-editor-on-ubuntu-22-04-lts/)

```
# Make your Ubuntu system up-to-date by using the following command

sudo apt update && sudo apt upgrade -y

# Install the following dependencies

sudo apt install software-properties-common -y

# Import the PPA using the following command
# Please note that only one version can be installed simultaneously
# So if you import both stable and unstable versions 
# Then unstable version will be installed as it is the newest version

# Import Stable Neovim PPA

sudo add-apt-repository ppa:neovim-ppa/stable -y

# Import Unstable Neovim PPA

sudo add-apt-repository ppa:neovim-ppa/unstable -y

# Run an APT update to sync the changes

sudo apt-get update

# With the PPA imported, install the editor

sudo apt install neovim -y
```

For Windows 
```
# Run as administrator

choco install neovim
```


## To use my config file

#### Clone this repository

UNIX
###### Clone using HTTPS method
```
git clone https://github.com/awesomeDev12/nvim.git ~/.config/nvim
```

OR

###### Clone using Github CLI (Recommended)
```
gh repo clone awesomeDev12/nvim ~/.config/nvim
```

Windows
```
git clone https://github.com/awesomeDev12/nvim.git $Env:USERPROFILE\AppData\Local\nvim
```

#### Install Packer plugin manager
UNIX
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Windows
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```


#### Nodejs provider

For Arch 
```
sudo pacman -S nodejs
sudo pacman -S npm
sudo npm -g update
sudo npm i -g yarn
sudo npm i -g neovim
```

For Ubuntu
```
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash -

sudo apt-get install nodejs

# If possible update npm

# Install yarn
sudo npm i -g yarn
sudo npm i -g neovim
```

For Windows
```
# Run as administrator
choco install nodejs
choco install yarn
```


#### Python provider

For Ubuntu
```
sudo apt install python3-pip
pip install venvs


# Run this command if the above the command is not working
# Check version before installing (Its needed for debian systems)
sudo apt install python3.10-venv


#Install in virtualenv
python3 -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python

```

For Arch
```
sudo pacman -S python-pip
pip install venvs

#Install in virtualenv
python -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python
```









