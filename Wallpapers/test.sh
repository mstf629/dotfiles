#!/usr/bin/bash


export  wallpaper_path=/home/mustafa/project/gitproject/mydotfiles/scripts/wallpaper/Wallpapers

wallpapers=(
    "$wallpaper_path"/*.jpg
    "$wallpaper_path"/*.jpeg
    "$wallpaper_path"/*.png
    "$wallpaper_path"/*.bmp
    "$wallpaper_path"/*.svg
)
wallpaper_size=${#wallpapers[*]}

for (( i = 0; i < wallpaper_size; i++ )); do
   echo <img src="${wallpapers[i]}alt=""/> >> test.html
done

echo done 
