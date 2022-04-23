#!/usr/bin/env bash

# Source: https://github.com/yory8/clipman/issues/52#issuecomment-778693461

app_id=$( swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.focused==true)|.app_id'  )
if [[ $app_id != "org.keepassxc.KeePassXC" ]]; then
    clipman store --no-persist
fi
