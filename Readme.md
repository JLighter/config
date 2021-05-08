# Quickstart
I use [ssh0/dot](https://github.com/ssh0/dot) dotfiles manager for maintaining these files through all my computers
you just have to download this software and source the dot.sh file (all the other configuration of this repo is already set inside my dotfiles)

  ```
  git clone https://github.com/ssh0/dot $HOME/.zsh/dot && \
  source $HOME/.zsh/dot/dot.sh && \
  git clone https://github.com/jlighter/dotfiles $HOME/.dotfiles
  ```

You know have to create the configuration for dot.
Copy the dotrc into .config/dot/

  `cp -i $HOME/.zsh/dot/examples/dotrc $HOME/.config/dot/`

Change the linkfile you want to use inside dotrc file. 

Run the `dot set` command

You're done with the dotfiles !

## ZSH Plugins
I have installed several plugins in order to make zsh more user friendly and colorful

Three of them cannot be installed by zsh plugin installer.
You need to launch these 3 commands :
- git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
- git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
- git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Neovim 
First install neovim with your distribution package manager

Then, install [vim-plug](https://github.com/junegunn/vim-plug)

  `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

Run neovim and launch the `:PlugInstall` command

### Coc extensions

Inside neovim run this command :

  `:CocInstall coc-sh coc-prettier coc-jedi coc-html coc-json coc-angular coc-git coc-tsserver coc-tslint-plugin coc-pyright`

## TMUX
Install tmux with your package manager

Install [tpm](https://github.com/tmux-plugins/tpm)

  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Go to tmux and run **\<C-a> I** in order to install plugins
