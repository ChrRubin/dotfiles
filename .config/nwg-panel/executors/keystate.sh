#!/usr/bin/env bash

q=$(xset -q)
caps=$(echo "$q" | grep -o 'Caps Lock:.*' | awk '{print $3}')
num=$(echo "$q" | grep -o 'Num Lock:.*' | awk '{print $3}')
scroll=$(echo "$q" | grep -o 'Scroll Lock:.*' | awk '{print $3}')
