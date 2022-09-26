#!/usr/bin/env bash

inside="303030b2"
text="eeeeee"
transparent="00000000"

swaylock \
  --image "$HOME/Pictures/wahtcher-bg.jpg" \
  --scaling fill \
  --ignore-empty-password \
  --daemonize \
  --fade-in 0.5 \
  --indicator \
  --clock \
  --timestr "%I:%M %p" \
  --datestr "%a %d %b %Y" \
  --indicator-radius 200 \
  --indicator-thickness 20 \
  --inside-color $inside \
  --inside-clear-color $inside \
  --inside-ver-color $inside \
  --inside-wrong-color $inside \
  --line-color "30303025" \
  --ring-color $inside \
  --separator-color $transparent \
  --font "system-ui" \
  --text-color $text \
  --text-clear-color $text \
  --text-caps-lock-color $text \
  --text-wrong-color $text \
  --text-ver-color $text \
