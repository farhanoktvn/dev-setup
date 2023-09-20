## Install ZSH

```
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
```
Then, log off.


## Install `oh-my-zsh`
```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

## Install `powerlevel10k`
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Then, set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.
