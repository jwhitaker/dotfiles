#!/usr/bin/env bash


get_basename() {
    echo "${1%.*}"
}

update_monitor() {
    monitor_number=$1
    image_filename=$2

    script='tell application "System Events" to tell desktop '$monitor_number' to set picture to "'$image_filename'"'
    osascript -e "$script"
}

image_filename=$1
base_filename="${image_filename%.*}"

magick $image_filename -crop 50%x100% +repage ~/Pictures/${base_filename}_%d.png

update_monitor 1 ~/Pictures/${base_filename}_1.png
update_monitor 2 ~/Pictures/${base_filename}_0.png