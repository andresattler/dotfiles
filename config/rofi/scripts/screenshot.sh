#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/screenshot.rasi"

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
        sleep 1; grim 'Screenshot_%Y-%m-%d-%S_$wx$h.png' | eog
        ;;
    $area)
        grim -g "$(slurp)" 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; eog $$(xdg-user-dir PICTURES)/$f'
        ;;
    $window)
        sleep 1; grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; eog $$(xdg-user-dir PICTURES)/$f'
        ;;
esac

