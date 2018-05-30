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

iTerm -> Preferences -> General -> Preferences (bottom) and check *Load preferences from a custom folder or URL* and point it to this git repository

## 4. Set up .zsh config

Link -zshrc config file

```shell
ln -sf .zshrc ~/.zshrc
```

## 5. Set up zsh auto-complete

(from <https://github.com/zsh-users/zsh-autosuggestions>)

a)

```shell
brew install zsh-autosuggestions
```

b)

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/local/share/zsh-syntax-highlighting
```

## 6. Set up kube-ps1

```shell
curl --create-dirs -o /usr/local/opt/kube-ps1.sh https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
```
