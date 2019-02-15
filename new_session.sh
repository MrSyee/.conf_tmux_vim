tmux new-session \; \
    split-window -v -p 82 \; \
    split-window -h \; \
    select-pane -t 1 \; \
    split-window -h \; \
    send-keys 'top' C-m \; \
    select-pane -t 1 \; \
    send-keys 'htop' C-m \; \
