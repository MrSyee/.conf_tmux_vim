# myconfig
customize various configuration from config of reference (ex. vim, tmux)
## Installation
```
$ cd ~
$ git clone https://github.com/MrSyee/.myconfig.git
$ ln -s -f ~/.myconfig/ ~/.tmux.conf
$ ln -s -f ~/.myconfig/ ~/.tmux.conf.local
$ ln -s -f ~/.myconfig/ ~/.vimrc
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
