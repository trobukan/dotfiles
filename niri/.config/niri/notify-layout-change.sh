#!/usr/bin/env bash

niri msg -j event-stream | while read -r line; do
  is_layout_event=$(echo "$line" | jq 'has("KeyboardLayoutSwitched")')
  if $is_layout_event; then
    layout=$(niri msg -j keyboard-layouts | jq -r '.names[.current_idx]')
    notify-send "Layout Changed: $layout"
  fi
done
