#!/bin/bash

choice=$(printf "  APAGAR\n  REINICIAR\n  SUSPENDER" | \
    wofi --dmenu \
    --prompt "SYSTEM" \
    --width 260 \
    --height 300 \
    --location center \
    --halign center \
    --valign center \
    --content_halign center \
    --cache-file /dev/null \
    --style ~/.config/wofi/power.css)

case "$choice" in
    *APAGAR)
        systemctl poweroff
        ;;
    *REINICIAR)
        systemctl reboot
        ;;
    *SUSPENDER)
        systemctl suspend
        ;;
esac
