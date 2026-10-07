#!/bin/bash

if hyprctl clients | grep -q 'class: fastfetch-popup'; then
    hyprctl dispatch 'hl.dsp.window.close({ window = "class:^fastfetch-popup$" })'
else
    kitty \
        --class fastfetch-popup \
        --title Fastfetch \
        --override font_size=7 \
        --override confirm_os_window_close=0 \
        sh -c 'fastfetch; exec tail -f /dev/null'
fi
