#!/bin/bash
#keyboard layout indicator.

#LAYOUT=$(xset -q | awk 'NR==2 {print $NF}')
#[[ "$LAYOUT" = "00000000" ]] && echo "US" || echo "AR"

[[ "$(xset -q | grep -o "00000000")" = "00000000" ]] && echo "US" || echo "AR"
