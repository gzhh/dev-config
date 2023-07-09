# vim-config
## Install Neovim
### Mac
1. Install Neovim by brew
```
brew install neovim
```

2. Install [vim-plug](https://github.com/junegunn/vim-plug), Read [vim-plug tutorial](https://github.com/junegunn/vim-plug/wiki/tutorial)
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Import nvim/init.vim to your specified directory
```
cp nvim/init.vim .config/nvim/init.vim
```

4. Open nvim and run `:PlugInstall`

5. Errors handle

- No "python3" provider found. Run :checkhealth provider

    `python3 -m pip install --user --upgrade pynvim`
