# Syee's dotfiles
customize various configuration from config of reference (ex. vim, tmux)

## Installation
```
$ cd ~
$ git clone https://github.com/MrSyee/.dotfiles.git
```

To set the configurations, please follow the steps below. It uses `stow`.

```
$ cd .dotfiles
$ sh apt_install.sh
$ sh setup.sh
```

### Apply change config of tmux

```
Prefix + :source-file ~/.tmux.conf
```

## Etc

Initialize a new session on `tmux`:

```
$ sh ~/.dotfiles/new_session.sh
```



## Reference
- bash-it
    - https://github.com/Bash-it/bash-it
- fzf
    - https://github.com/junegunn/fzf
- tmux
    - https://github.com/gpakosz/.tmux
- vim
    - https://github.com/fisadev/fisa-vim-config
