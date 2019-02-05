# config tmux and vim
customize tmux and vim configuration from config of reference
## Installation
```
$ cd ~
$ git clone https://github.com/MrSyee/.conf_tmux_vim.git
$ ln -s -f .conf_tmux_vim/.tmux.conf
$ ln -s -f .conf_tmux_vim/.tmux.conf.local
$ ln -s -f .conf_tmux_vim/.vimrc
```
### Apply change config of tmux
```
Prefix + :source-file ~/.tmux.conf
```
## Reference
- tmux
    - https://github.com/gpakosz/.tmux
- vim
    - https://github.com/fisadev/fisa-vim-config
