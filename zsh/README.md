### MacOS Setup

Install dependencies for macOS:
```
# brew install zsh-syntax-highlighting
# brew install autojump
# brew install zsh-autosuggestions
# brew install romkatv/powerlevel10k/powerlevel10k
```

Fix insecure directories:
```
# compaudit | xargs chmod g-w
```

### Debian Setup

```
# apt install zsh -yqq
# chsh -s /usr/bin/zsh `whoami`
# apt-get install zsh-syntax-highlighting autojump zsh-autosuggestions -yqq
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
```

### Generic

- `$HOME/.zshrc` - actual ZSH config
- `$HOME/.zsh/aliasrc` - aliases

Init:
```
# mkdir $HOME/.zsh
# touch $HOME/.zsh/aliasrc
# touch $HOME/.zshrc
```

### Move files from this repo

```
# cp zsh/zshrc $HOME/.zshrc
# 
```

ZSH Projects:
```
https://github.com/zsh-users/zsh-syntax-highlighting
https://github.com/zsh-users/zsh-autosuggestions
https://github.com/wting/autojump
https://github.com/romkatv/powerlevel10k
https://github.com/ohmyzsh/ohmyzsh/
```
