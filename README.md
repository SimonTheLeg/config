# How to install/configure the tools

## Pre-Req

clone this repository somewhere on your hard-drive

## 1. Oh My Zsh

(from <https://github.com/robbyrussell/oh-my-zsh> and <https://gist.github.com/kevin-smets/8568070>)

Install via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## 2. Set up Powerline fonts

(from <https://github.com/powerline/fonts>)

```shell
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

## 3. Set up iTerm profile (itermconfig.json)

```txt
iTerm -> Preferences -> General -> Preferences (bottom) and check *Load preferences from a custom folder or URL* and point it to this git repository
```

## 4. Set up .zsh config

Link -zshrc config file

```shell
ln -sf <absolute path to file in git> <absolute path to ~/.zshrc>
```

## 5. Set up zsh plugins

### zsh autosuggestion

(from <https://github.com/zsh-users/zsh-autosuggestions>)

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### zsh syntax highlighting

```shell
brew install zsh-syntax-highlighting
```

### kube-ps1

```shell
curl --create-dirs -o /usr/local/opt/kube-ps1/share/kube-ps1.sh https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
```

### git open

```shell
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
```

## 6. Set up gs and git lg commands

```shell
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

## 7. Sync VS-Code Plugins and Settings

Create a new Github account token

```txt
Github.com -> Settings -> Developer Settings -> Personal access token

Make sure the gist permission is set
```

Install *code-settings-sync* extension from 

```txt
https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
```

Launch the extension

```txt
VSCode -> Sync: Download Settings
```

Enter the token in the dialogue field